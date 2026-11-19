#!/usr/bin/env bash
# Test matrix for the push guard. Run from anywhere:
#   .claude/hooks/guard-git.test.sh
# Exits non-zero if any case behaves differently than expected.

set -u

here="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
hook="$here/guard-git.sh"
failed=0

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required to build the hook's JSON input." >&2
  exit 1
fi

run() { printf '%s' "$1" | jq -Rs '{tool_input:{command:.}}' | "$hook" >/dev/null 2>&1; }

check() {
  local expected="$1" cmd="$2" got
  if run "$cmd"; then got=ALLOW; else got=BLOCK; fi
  if [ "$got" = "$expected" ]; then
    printf '  ok   %-5s %s\n' "$got" "$cmd"
  else
    printf '  FAIL expected=%s got=%s  %s\n' "$expected" "$got" "$cmd"
    failed=1
  fi
}

echo "Pushes to claude/* and unrelated git commands — must be allowed:"
check ALLOW 'git push -u origin claude/my-branch'
check ALLOW 'git push origin claude/feature'
check ALLOW 'git push origin HEAD:claude/feature'
check ALLOW 'git push origin claude/a claude/b'
check ALLOW 'git status && git push -u origin claude/x'
check ALLOW 'git push origin refs/heads/claude/x'
check ALLOW 'git commit -m "push to main later"'
check ALLOW 'git log --oneline -5'
check ALLOW 'git fetch origin main && git merge --no-edit FETCH_HEAD'
check ALLOW 'ls -la'

echo
echo "Everything else — must be blocked:"
# Destination outside the allowlist.
check BLOCK 'git push origin main'
check BLOCK 'git push origin HEAD:main'
check BLOCK 'git push origin master'
check BLOCK 'git push origin claude/ok main'
check BLOCK 'git push origin claude/../main'
check BLOCK 'git push origin refs/heads/claude/../../main'
# No explicit destination: git config would decide it.
check BLOCK 'git push'
check BLOCK 'git push origin'
# Forced updates.
check BLOCK 'git push --force origin claude/x'
check BLOCK 'git push -f origin claude/x'
check BLOCK 'git push --force-with-lease origin claude/x'
check BLOCK 'git push --force-with-lease=main:abc origin claude/x'
check BLOCK 'git push origin +claude/x'
# Deletions.
check BLOCK 'git push origin --delete claude/x'
check BLOCK 'git push origin :claude/x'
check BLOCK 'git push origin claude/x:'
# Bulk pushes.
check BLOCK 'git push --mirror origin'
check BLOCK 'git push --all origin'
# History rewriting and direct ref moves.
check BLOCK 'git filter-repo --invert-paths'
check BLOCK 'git filter-branch --all'
check BLOCK 'git update-ref refs/heads/main HEAD'
# Pushes the guard cannot parse: it refuses rather than guesses.
check BLOCK 'bash -c "git push origin main"'
check BLOCK 'sh -c "git push origin main"'
check BLOCK 'eval "git push origin main"'
check BLOCK 'git push origin "main'
# A disallowed push chained after an allowed one.
check BLOCK 'git push origin claude/x && git push origin main'
check BLOCK 'cd /tmp && git push origin main'

echo
if [ "$failed" -eq 0 ]; then
  echo "All cases passed."
else
  echo "Some cases failed."
fi
exit "$failed"
