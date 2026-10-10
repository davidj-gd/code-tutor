#!/usr/bin/env bash
if [ -f "${CLAUDE_PROJECT_DIR:-$PWD}/.tutor/paused" ]; then
  echo "code-tutor is installed but PAUSED in this project (the student ran /tutor-off). Act as a normal coding assistant. Mention once, briefly, that they can run /tutor-on to get the tutor back."
else
  cat "${CLAUDE_PLUGIN_ROOT}/hooks/tutor-context.md"
fi
