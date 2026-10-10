# code-tutor 🎓

**A Claude Code plugin that turns Claude into your programming teacher, not your ghostwriter.**

Using AI while you're learning to code has a catch: it's way too easy to let it write
everything, and then you haven't actually learned anything. With code-tutor on, Claude
**asks questions, explains concepts and points you in the right direction — but it never
writes or edits your code.** You do the typing. You do the thinking.

Made for game programming students (Unreal Engine C++ / Blueprints), but works for any language.

---

## Install (2 commands)

You need [Claude Code](https://code.claude.com) and, on Windows, [Git for Windows](https://git-scm.com/download/win).

Inside Claude Code, run:
```
/plugin marketplace add davidj-gd/code-tutor
/plugin install code-tutor@nipsett
```
When asked for a scope, pick **project** to have tutor mode only in your game project
(recommended), or **user** to have it everywhere.

Type `/tutor` to check it works.

---

## Commands

| Command | What it does |
|---|---|
| `/tutor` | Shows status and all commands |
| `/hint` | The next smallest hint for what you're stuck on. Run it again for a bigger one |
| `/explain <concept>` | Teaches a concept step by step, then checks you got it |
| `/critique [file]` | Code review through questions — no rewrites |
| `/bughunt <error>` | Coaches you through finding a bug or compile error yourself |
| `/quiz [topic]` | 5 questions, one at a time, based on your own code |
| `/journal` | Writes what you learned today to `.tutor/journal.md` |
| `/tutor-off` / `/tutor-on` | Pause / resume tutor mode in this project |

You don't *have* to use commands — just talk to Claude normally. Tutor mode is always on.

If a short command clashes with another plugin you have, use the full name: `/code-tutor:hint`.

---

## How it works

- **Teaching rules** load at the start of every session: ask before telling, one question
  at a time, explain the *why*, never hand over a full solution.
- **The hint ladder.** When you're stuck, Claude climbs one rung at a time:
  1. A guiding question
  2. Names the concept / where to look
  3. Points to the exact file and line, in words
  4. A tiny example in a *different* context than your code
  5. Plain-language steps — you still type it
- **Hard block on edits.** A hook physically stops Claude from writing, editing, moving or
  deleting your files — even if you ask it to. It can still read your code, search it and
  run builds, like a teacher looking over your shoulder.
- **Only you can pause it.** `/tutor-off` works when *you* type it. Claude can't turn
  the tutor off by itself.

## Tips

- **Blueprints:** Claude can't read `.uasset` files. Screenshot your Blueprint graph and paste
  it into Claude Code (Ctrl+V).
- **Journal:** run `/journal` at the end of each session. Over a semester it becomes a real
  record of what you learned — great for portfolio case studies.
- **Uninstall:** `/plugin` → Installed → code-tutor → Uninstall.

---

Made by [David Nipsett](https://davidnipsett.com) · game programming student at Forsbergs Skola
