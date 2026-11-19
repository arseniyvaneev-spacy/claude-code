#!/usr/bin/env python3
"""PreToolUse guard for the github-maintainer agent.

Allows `git push` only to branches under `claude/`, and refuses anything it
cannot parse with confidence. Exit code 2 blocks the tool call and shows
stderr to Claude; exit 0 allows it.

Design: allowlist, fail closed. The previous version used a denylist of
patterns (main, --force, ...) and therefore allowed through every form it had
not been taught, including a bare `git push` whose destination comes from git
config. Here a push must name a destination, and that destination must be a
`claude/` branch, or it is refused.

This is a guard against mistakes, not a security boundary: it runs in the same
process that composes the commands. Server-side branch protection is what
actually prevents a determined push.
"""

import json
import re
import shlex
import sys

SELF = ".claude/hooks/guard-git.py"

# Branch names a push may target.
ALLOWED_DEST = re.compile(r"^(?:refs/heads/)?claude/[A-Za-z0-9._\-/]+$")

# Push options that rewrite or destroy remote state, whatever the destination.
FORBIDDEN_PUSH_OPTS = (
    "--force",
    "--force-with-lease",
    "--force-if-includes",
    "--delete",
    "--mirror",
    "--all",
    "--prune",
)

# Git subcommands that rewrite history or move refs directly.
FORBIDDEN_SUBCOMMANDS = ("filter-branch", "filter-repo", "update-ref", "symbolic-ref")

# Tokens that mean a nested shell we cannot inspect.
NESTED_SHELL = ("eval", "bash", "sh", "zsh", "dash", "xargs", "env")

SHELL_OPERATORS = {"&&", "||", ";", "|", "&", "\n"}


def block(reason):
    print(f"Blocked by {SELF}: {reason}", file=sys.stderr)
    sys.exit(2)


def read_command():
    raw = sys.stdin.read()
    try:
        payload = json.loads(raw)
    except (ValueError, TypeError):
        # Not the expected envelope. Inspect the raw text rather than trusting it.
        return raw
    tool_input = payload.get("tool_input") or {}
    if not isinstance(tool_input, dict):
        return raw
    return tool_input.get("command") or ""


def tokenize(cmd):
    """Split a shell command, keeping operators as their own tokens."""
    lexer = shlex.shlex(cmd, posix=True, punctuation_chars=True)
    lexer.whitespace_split = True
    return list(lexer)


def segments(tokens):
    """Split a token list into individual commands on shell operators."""
    out, current = [], []
    for token in tokens:
        if token in SHELL_OPERATORS:
            if current:
                out.append(current)
            current = []
        else:
            current.append(token)
    if current:
        out.append(current)
    return out


def check_push(seg):
    """Validate one `git push` segment. Returns on success, blocks otherwise."""
    idx = seg.index("push")
    args = seg[idx + 1 :]

    for arg in args:
        for opt in FORBIDDEN_PUSH_OPTS:
            # Matches --force and --force=..., not --force-with-lease under --force.
            if arg == opt or arg.startswith(opt + "="):
                block(f"`{opt}` is not allowed on a push.")
        # Short flag clusters: -f (force), -d (delete). -u and others are fine.
        if re.fullmatch(r"-[A-Za-z]+", arg):
            if "f" in arg[1:]:
                block("force-push is not allowed.")
            if "d" in arg[1:]:
                block("deleting remote branches is not allowed.")

    positional = [a for a in args if not a.startswith("-")]
    if not positional:
        block(
            "a push must name a remote and a branch, e.g. "
            "`git push -u origin claude/my-branch`; a bare `git push` takes its "
            "destination from git config and is not allowed."
        )

    refspecs = positional[1:]
    if not refspecs:
        block(
            "a push must name the branch explicitly, e.g. "
            "`git push -u origin claude/my-branch`."
        )

    for spec in refspecs:
        if spec.startswith("+"):
            block(f"forced refspec `{spec}` is not allowed.")
        src, sep, dest = spec.partition(":")
        target = dest if sep else src
        if sep and not src:
            block(f"refspec `{spec}` deletes a remote branch; not allowed.")
        if not target:
            block(f"refspec `{spec}` has no destination; not allowed.")
        if ".." in target:
            block(f"push target `{target}` contains `..`; not allowed.")
        if not ALLOWED_DEST.match(target):
            block(
                f"push target `{target}` is outside the allowlist. "
                "Pushes are only permitted to `claude/*` branches; open a pull "
                "request to land anything on another branch."
            )


def main():
    cmd = read_command()
    if not cmd or "git" not in cmd:
        sys.exit(0)

    try:
        tokens = tokenize(cmd)
    except ValueError:
        # Unbalanced quotes and the like. If it mentions a push, refuse it.
        if "push" in cmd:
            block("could not parse this command; refusing a push it may contain.")
        sys.exit(0)

    # A single token holding both `git` and `push` is a nested command string,
    # e.g. bash -c "git push origin main". It is never ours to parse.
    for token in tokens:
        if "git" in token and "push" in token and token not in ("git", "push"):
            block(
                "a push inside a quoted command string cannot be checked; "
                "run `git push` directly."
            )

    mentions_push = "push" in tokens

    for seg in segments(tokens):
        if "git" not in seg:
            continue

        for sub in FORBIDDEN_SUBCOMMANDS:
            if sub in seg:
                block(f"`git {sub}` is not allowed.")

        if "push" not in seg:
            continue

        if any(t in NESTED_SHELL for t in seg):
            block(
                "a push wrapped in another shell cannot be checked; "
                "run `git push` directly."
            )

        check_push(seg)
        mentions_push = False  # this one was validated

    if mentions_push:
        # A push the segmenter never reached (odd quoting, substitution, ...).
        block("could not locate the push command to check it; refusing.")

    sys.exit(0)


if __name__ == "__main__":
    main()
