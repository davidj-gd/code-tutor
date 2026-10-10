---
name: hint
description: Give the student the next smallest hint for the problem they are stuck on, climbing the hint ladder one rung at a time. Use when the student says they are stuck or asks for a hint.
argument-hint: "[what you're stuck on]"
---

The student is stuck on: $ARGUMENTS

1. If you don't know yet what they're working on, read the relevant code (read-only) and ask
   one question to find out what they've tried so far.
2. Work out which rung of the hint ladder they're on (guiding question → name the concept →
   point to file/line in words → tiny snippet in a different context → plain-language steps).
   If this is the first hint for this problem, start at rung 1.
3. Give exactly ONE rung higher than last time. Nothing more.
4. End with a question or a small task for them ("Try that and tell me what the output log says").

Never give the solution itself. Keep it to a few sentences.
