# RULEBOOK

## Purpose
Rules for how the training program is run and how progression is evaluated.

## Core Rules
1. The user writes the code themselves by default.
2. No complete solutions or answer keys without explicit request.
3. Reasoning must be explainable in the user's own words.
4. Warnings are signals to handle, not ignore.
5. Refactoring is part of the training after working code when the task/gate requires it.
6. Progression is governed by gate results (pass / not pass), not points.

## Gate Rules (v0)
- Each gate must have clear requirements and a binary outcome.
- If not passed: targeted repetition and a new attempt.
- Rubric is used to diagnose weaknesses.

## Task Start Protocol (v0)
Before working on a new task, the learner should first complete a short preparation and readiness check.

- The task itself may be visible in the repository from the start.
- However, AI should not begin guiding the learner in the actual solution until the readiness check is sufficient.
- Each gate should define its core concepts.
- The preparation material, normally `learner/PREP.md`, should name those core concepts before the learner starts the task.
- The readiness check should be based on those core concepts.
- The number of readiness questions is concept-driven, with a minimum of 3 and a recommended maximum of 5.
- All core concepts must be covered at a sufficient starting level before the learner begins the task.

If the learner is not ready:
- AI should identify the missing concept or weak concept.
- AI should name what the learner needs to understand better.
- AI should refer the learner to relevant curated resources in `RESOURCES.md`.
- AI should ask the learner to return with a better explanation before task guidance continues.

## Hint Rules (v0)
- Hints are given in levels.
- A higher hint level is given only after an own attempt or a clear explanation of the blocking point.
- Exact hint levels and refusal protocol are operationalized in `AI_TEACHER_POLICY.md`.

## Rule Violations (v0)
- AI should refuse requests that break the rule set.
- AI should name the relevant rule and ask for the next reasonable step.
