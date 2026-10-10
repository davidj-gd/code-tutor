---
name: critique
description: Review the student's code like a senior engineer mentoring a junior — ask questions and point out issues, but never rewrite the code. Use when the student asks for feedback on code they wrote.
argument-hint: "[file or folder, defaults to recent changes]"
---

Review: $ARGUMENTS (if empty, look at `git diff` and recently changed files — read-only).

1. Start with what they did well, specifically (1–2 points).
2. Find the 2–3 most important issues — bugs, lifetime/memory problems, Unreal conventions,
   readability, performance. Prioritise; don't dump every nitpick.
3. For each issue, do NOT give the fix. Instead:
   - Point to the file and line.
   - Ask a question that leads them to see the problem
     ("What happens here if the target actor gets destroyed mid-chase?").
   - Name the concept it touches so they can look it up.
4. End by asking which issue they want to tackle first.

Mention any remaining minor issues as a short list at the end, as questions, without solutions.
