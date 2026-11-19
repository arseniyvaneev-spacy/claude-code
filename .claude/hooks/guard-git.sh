#!/usr/bin/env bash
# PreToolUse hook for the github-maintainer agent.
# Blocks git commands that rewrite or destroy remote history, or push to the
# default branch. Exit code 2 blocks the tool call and shows stderr to Claude.

input="$(cat)"

# Pull the Bash command out of the hook's JSON input; fall back to the raw input.
if command -v jq >/dev/null 2>&1; then
  cmd="$(printf '%s' "$input" | jq -r '.tool_input.command // empty')"
else
  cmd="$input"
fi

block() {
  echo "Blocked by .claude/hooks/guard-git.sh: $1" >&2
  exit 2
}

# Only inspect git push / reset commands.
if printf '%s' "$cmd" | grep -Eq '(^|[;&|[:space:]])git[[:space:]]+push([[:space:]]|$)'; then
  printf '%s' "$cmd" | grep -Eq -- '(--force|--force-with-lease|--force-if-includes|[[:space:]]-[a-zA-Z]*f[a-zA-Z]*([[:space:]]|$)|[[:space:]]\+[^[:space:]]+)' \
    && block "force-push is not allowed."
  printf '%s' "$cmd" | grep -Eq -- '(--delete|[[:space:]]-d([[:space:]]|$)|[[:space:]]:[^[:space:]]+)' \
    && block "deleting remote branches is not allowed."
  printf '%s' "$cmd" | grep -Eq -- '([[:space:]:/]|^)(main|master)([[:space:]]|$)' \
    && block "pushing to main/master is not allowed; push a feature branch and open a PR."
  printf '%s' "$cmd" | grep -Eq -- '--mirror|--all|--tags.*--prune|--prune' \
    && block "mirror/prune pushes are not allowed."
fi

if printf '%s' "$cmd" | grep -Eq '(^|[;&|[:space:]])git[[:space:]]+(filter-branch|filter-repo)'; then
  block "history rewriting is not allowed."
fi

exit 0
