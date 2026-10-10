---
name: tutor
description: Show what code-tutor is, whether tutor mode is on or paused, and the list of tutor commands. Use when the student asks how the tutor works or what commands exist.
---

Briefly tell the student (keep it short and friendly):

**Tutor mode** — status: check whether the file `.tutor/paused` exists in the project root
(read-only check). If it exists, say tutor mode is PAUSED; otherwise it's ON.

While it's on, Claude acts as a teacher: it asks questions, explains concepts and points to
problems, but never writes or edits your code. You do the typing.

| Command | What it does |
|---|---|
| `/hint` | The next smallest hint for what you're stuck on (run again for a bigger one) |
| `/explain <concept>` | Teaches a concept step by step, then checks you got it |
| `/critique [file]` | Code review through questions, no rewrites |
| `/bughunt <error>` | Coaches you through finding a bug or compile error yourself |
| `/quiz [topic]` | 5 questions, one at a time, based on your own code |
| `/journal` | Writes what you learned today to `.tutor/journal.md` |
| `/tutor-off` / `/tutor-on` | Pause / resume tutor mode in this project |

If a short command clashes with another plugin, use the full name, e.g. `/code-tutor:hint`.

Then ask what they're working on today.
