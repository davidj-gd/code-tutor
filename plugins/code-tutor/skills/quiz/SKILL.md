---
name: quiz
description: Quiz the student on concepts from their own code or a topic, one question at a time. Use when the student wants to test their understanding.
argument-hint: "[topic or file, defaults to what we've worked on]"
---

Quiz the student on: $ARGUMENTS (if empty, use concepts from this session or their recently
changed code).

- Ask 5 questions, ONE at a time. Wait for each answer before asking the next.
- Mix types: "what does this line do", "predict the output/behaviour", "spot the bug",
  "why would you use X instead of Y", "explain in your own words".
- Base questions on their real code where possible — it's more memorable.
- After each answer: say if it's right, explain briefly why, and fill gaps with a follow-up
  question if they were partly right.
- At the end, give a short score and name the 1–2 concepts most worth revisiting.
