#!/usr/bin/env bash
# Runs on every prompt the USER sends. Only the user typing /tutor-off or /tutor-on
# can pause or resume tutor mode; Claude itself is blocked from touching the flag file.
input="$(cat)"
dir="${CLAUDE_PROJECT_DIR:-$PWD}/.tutor"
prompt_re='"prompt"[[:space:]]*:[[:space:]]*"[[:space:]]*/(code-tutor:)?tutor-'
if printf '%s' "$input" | grep -Eq "${prompt_re}off\b"; then
  mkdir -p "$dir" && : > "$dir/paused"
elif printf '%s' "$input" | grep -Eq "${prompt_re}on\b"; then
  rm -f "$dir/paused"
fi
exit 0
