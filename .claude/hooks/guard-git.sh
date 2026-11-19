#!/usr/bin/env bash
# PreToolUse hook for the github-maintainer agent.
#
# Thin wrapper: the real check lives in guard-git.py, which needs python3.
# Without python3 this refuses every push rather than waving it through, so a
# missing interpreter cannot silently disable the guard.
#
# Exit code 2 blocks the tool call and shows stderr to Claude.

set -u

here="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
checker="$here/guard-git.py"

if command -v python3 >/dev/null 2>&1 && [ -r "$checker" ]; then
  exec python3 "$checker"
fi

# Fallback: no python3 (or the checker is missing). Fail closed.
input="$(cat)"
if command -v jq >/dev/null 2>&1; then
  cmd="$(printf '%s' "$input" | jq -r '.tool_input.command // empty' 2>/dev/null)"
else
  cmd="$input"
fi

if printf '%s' "$cmd" | grep -q 'push'; then
  echo "Blocked by .claude/hooks/guard-git.sh: the push guard needs python3," \
       "which is not available here, so pushes are refused." >&2
  exit 2
fi

exit 0
