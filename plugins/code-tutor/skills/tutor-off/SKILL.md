---
name: tutor-off
description: Pause tutor mode in this project so Claude can write and edit code normally.
disable-model-invocation: true
---

The student just ran /tutor-off. A hook has created `.tutor/paused`, so edits are no longer
blocked. From now on in this session, behave as a normal coding assistant and ignore the
earlier CODE TUTOR MODE rules, until the student runs /tutor-on.

Confirm in one line: "Tutor mode paused — I can write code now. Run /tutor-on to switch back."
If `.tutor/paused` does NOT exist (check read-only), say the pause didn't take effect and
suggest disabling the plugin via /plugin instead.
