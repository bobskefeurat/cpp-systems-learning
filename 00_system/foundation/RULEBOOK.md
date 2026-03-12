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

Stored gate snapshots in `solution/` do not change rule 2.
They exist as maintainer or portfolio artifacts and are not part of the normal learner-facing flow.

## Gate Rules (v0)
- Each gate must have clear requirements and a binary outcome.
- If not passed: targeted repetition and a new attempt.
- A `not pass` result must name the weakest relevant dimension or concept.
- A `not pass` result must assign the smallest corrective action that targets that weakness.
- A remediation loop should normally include:
  - the weak dimension or concept
  - one concrete micro-task
  - the smallest relevant curated reading or resource
- the evidence required for the next attempt
- Rubric is used to diagnose weaknesses.

## Phase Integration Rules (v0)
- A phase may end with one integration gate.
- An integration gate exists to combine earlier phase concepts in one bounded task for transfer, not to introduce a major new topic.
- An integration gate should be larger than a normal micro-gate, but still small enough to finish in a few hours across several sessions.
- An integration gate should normally combine several earlier gate concepts from the phase, including the concepts the phase claims to build.
- An integration gate may use a light real-world or "client request" context to make the task feel meaningful, but that context must not introduce hidden requirements or extra domain knowledge.
- Evaluation remains binary: `pass` or `not pass`.
- `pass` on an integration gate should require both functional completion and a structured explanation of key design, warning, storage, and lifetime decisions that matter in that phase.
- `not pass` on an integration gate should target the smallest missing slice or broken invariant that prevents pass, instead of restarting the whole project when a local correction is enough.

## Evaluation Rules (v0)
- A gate result must be based on explicit verification of the gate's pass requirements.
- Matching runtime output alone is not enough unless the gate explicitly defines output as the only required evidence.
- Output checks should compare required observations, values, and ordering, not surface wording alone.
- Minor capitalization, spacing, or close synonyms should not by themselves cause `not pass` unless the gate explicitly makes literal text or exact ordering part of the required evidence.
- When a pass requirement depends on program structure, mechanism, or invariant, evaluation must inspect the code or other relevant artifacts directly.
- When a pass requirement depends on understanding, evaluation must use the learner's own explanation or a short targeted follow-up.
- If the submitted artifacts do not make a required invariant observable enough, AI should ask for the smallest missing piece of evidence before deciding `pass`.

## Task Start Protocol (v0)
Before working on a new task, the learner should first complete a short preparation and readiness check.

- The task itself may be visible in the repository from the start.
- However, AI should not begin guiding the learner in the actual solution until the readiness check is sufficient.
- Each gate should define its core concepts.
- The preparation material, normally `learner/PREP.md`, should name those core concepts before the learner starts the task.
- The readiness check should be based on those core concepts.
- Readiness questions must stay at concept level and must not require the learner to pre-describe the exact task solution, planned variable/function names, required run output, or project plan.
- The number of readiness questions is concept-driven, with a minimum of 3 and a recommended maximum of 5.
- All core concepts must be covered at a sufficient starting level before the learner begins the task.

If the learner is not ready:
- AI should identify the missing concept or weak concept.
- AI should name what the learner needs to understand better.
- AI should refer the learner to relevant curated resources in `RESOURCES.md`.
- AI should give the smallest hint, contrast question, or reading assignment that lets the learner try again.
- AI should not provide a model answer or rewritten response for the learner to repeat.
- AI should ask the learner to return with a better explanation before task guidance continues.

## Hint Rules (v0)
- Hints are given in levels.
- A higher hint level is given only after an own attempt or a clear explanation of the blocking point.
- The default escalation path is: own attempt -> Level 1-2 hints -> Level 3 substep help -> Level 4 controlled worked example/completion skeleton -> Level 5 answer key only on explicit request.
- After Level 4 or Level 5, the learner must explain the fix in their own words and complete a small near-transfer check before the gate is treated as stable.
- Exact hint levels and refusal protocol are operationalized in `AI_TEACHER_POLICY.md`.

## Rule Violations (v0)
- AI should refuse requests that break the rule set.
- AI should name the relevant rule and ask for the next reasonable step.
