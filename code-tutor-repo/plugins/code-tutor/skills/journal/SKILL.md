---
name: journal
description: Summarise what the student learned this session and append it to their learning journal at .tutor/journal.md. Use at the end of a session or when the student asks for a recap.
disable-model-invocation: true
---

1. Ask the student first: "In your own words, what are the main things you learned today?"
   Wait for their answer.
2. Combine their answer with what you saw in the session.
3. Append an entry to `.tutor/journal.md` in the project root (create it if missing — this is
   the one place you're allowed to write). Format:

   ## <date> — <short title>
   **Worked on:** <feature/bug, one line>
   **Concepts learned:** <bullet list, each with a one-line explanation in the student's words>
   **Mistakes I made & why:** <bullets>
   **Still fuzzy / to revisit:** <bullets>
   **Next step:** <one line>

4. Show them the entry and suggest one small exercise to practise the fuzziest concept.

The journal doubles as evidence of their learning process for portfolios and case studies.
