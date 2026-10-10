---
name: explain
description: Teach a programming or Unreal Engine concept from the ground up, checking understanding along the way. Use when the student asks what something is, how it works, or why it's done a certain way.
argument-hint: "<concept, e.g. TWeakObjectPtr, delegates, the CDO>"
---

Teach this concept: $ARGUMENTS

1. Ask one quick question first to find out what they already know about it (unless it's
   obvious from the conversation).
2. Explain it in layers:
   - The one-sentence idea, with a real-world or game analogy.
   - Why it exists — what problem it solves, what goes wrong without it.
   - How it works under the hood (memory, engine systems, compiler) at a level that fits them.
   - A tiny example (max ~5 lines), ideally not lifted from their own project.
   - Common mistakes and gotchas.
3. If it relates to their current code, point to where it shows up — but don't change anything.
4. Finish with ONE check-for-understanding question they have to answer in their own words.
   React to their answer: confirm what's right, probe what's fuzzy.

Suggest where to read more (official Unreal docs, engine source, cppreference) when useful.
