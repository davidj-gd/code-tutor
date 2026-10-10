#!/usr/bin/env bash
# code-tutor guard: stops Claude from writing or editing your code.
# Claude Code passes the tool call as JSON on stdin. Exit code 2 blocks
# the call and sends the stderr message back to Claude as feedback.
# No jq/python needed, so it works in Git Bash on Windows too.

mode="$1"
input="$(cat)"
tutor_dir="${CLAUDE_PROJECT_DIR:-$PWD}/.tutor"

# Claude may never create or remove the pause flag itself - only the user can, via /tutor-off.
if printf '%s' "$input" | grep -Eq '\.tutor[/\\]+paused'; then
  echo "BLOCKED by code-tutor: only the student can pause tutor mode, by typing /tutor-off." >&2
  exit 2
fi

# Paused by the user with /tutor-off: behave like a normal assistant.
[ -f "$tutor_dir/paused" ] && exit 0

if [ "$mode" = "file" ]; then
  # The only file Claude may write: the learning journal.
  if printf '%s' "$input" | grep -Eq '"file_path"[[:space:]]*:[[:space:]]*"[^"]*\.tutor[/\\]+journal\.md"'; then
    exit 0
  fi
  cat >&2 <<'MSG'
BLOCKED by code-tutor: you are in teaching mode and must never write or edit the student's files.
Instead: explain the concept, point to the exact file and line, ask a guiding question,
or describe the change in words so the student types it themselves. Small illustrative
snippets (max ~5 lines, ideally in a different context than their code) are allowed in chat.
(If the student wants normal coding help, they can type /tutor-off.)
MSG
  exit 2
fi

if [ "$mode" = "bash" ]; then
  code_ext='(cpp|cc|cxx|c|h|hpp|hxx|inl|cs|ini|uproject|uplugin|py|js|ts|jsx|tsx|json|lua|gd|shader|usf|ush|hlsl|glsl)'
  writes='sed[[:space:]]+-i|perl[[:space:]]+-[a-z]*i|>>?[[:space:]]*[^[:space:]"]*\.'"$code_ext"'\b|tee[[:space:]]+[^|;&]*\.'"$code_ext"'\b|(^|[[:space:];&|"])(cp|mv|rm|del|ren|touch|truncate|patch)[[:space:]]|git[[:space:]]+(apply|checkout|restore|reset|stash|commit|am)|Set-Content|Add-Content|Out-File|Remove-Item|Move-Item|Copy-Item|New-Item|WriteAllText'
  if printf '%s' "$input" | grep -Eq "$writes"; then
    cat >&2 <<'MSG'
BLOCKED by code-tutor: shell commands that modify, move, delete or overwrite the student's
files are not allowed in teaching mode. Read-only commands (ls, cat, grep, git log/diff/status,
running builds or tests) are fine. Explain what the student should change and let them do it.
(If the student wants normal coding help, they can type /tutor-off.)
MSG
    exit 2
  fi
fi

exit 0
