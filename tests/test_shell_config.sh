#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
zshenv="$repo_root/zsh_quick_apply/.zshenv"
zshrc="$repo_root/zsh_quick_apply/.zshrc"
bash_profile="$repo_root/zsh_quick_apply/.bash_profile"

failures=0

assert_equals() {
  local label="$1"
  local expected="$2"
  local actual="$3"

  if [[ "$actual" == "$expected" ]]; then
    printf 'PASS %s=%s\n' "$label" "$actual"
  else
    printf 'FAIL %s expected=%s actual=%s\n' "$label" "$expected" "$actual" >&2
    failures=1
  fi
}

count_matches() {
  local pattern="$1"
  shift
  rg -n --hidden --no-heading "$pattern" "$@" 2>/dev/null | wc -l | tr -d ' '
}

assert_equals \
  'zshenv_bash_profile_sources' \
  '0' \
  "$(count_matches '^[[:space:]]*(source|\.)[[:space:]]+.*\.bash_profile' "$zshenv")"
assert_equals \
  'zshrc_bash_profile_sources' \
  '1' \
  "$(count_matches '^[[:space:]]*(source|\.)[[:space:]]+.*\.bash_profile' "$zshrc")"
assert_equals \
  'automatic_nvm_loaders' \
  '0' \
  "$(count_matches '^[[:space:]]*(source|\.)[[:space:]]+.*nvm\.sh' "$zshenv" "$zshrc" "$bash_profile")"
assert_equals \
  'automatic_jenv_initializers' \
  '0' \
  "$(count_matches '^[[:space:]]*eval[[:space:]]+"\\$\\(jenv init -\\)"' "$zshenv" "$zshrc" "$bash_profile")"

zsh -n "$zshenv" "$zshrc" "$bash_profile"

exit "$failures"
