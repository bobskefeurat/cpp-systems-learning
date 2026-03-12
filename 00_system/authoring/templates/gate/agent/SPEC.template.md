# Gate {{N}} Spec: {{Display Name}} (draft v0)

## Purpose
`Gate {{N}}: {{Display Name}}` verifies that the learner can:
- {{ability 1}}
- {{ability 2}}
- {{ability 3}}

This gate is about {{focus}}.

## Current Baseline
- OS path: {{baseline OS}}
- Compiler baseline: {{compiler baseline}}
- Scope: {{workspace scope}}
- Language standard: {{language standard}}
- Required warning flags: {{warning flags}}
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- {{coverage item 1}}
- {{coverage item 2}}
- {{coverage item 3}}

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of {{follow-up requirement}} when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify each pass requirement against the relevant evidence source
- do not treat matching runtime output alone as proof when the gate also requires a specific code shape, mechanism, or explanation

## Pass Requirements
The learner passes `Gate {{N}}: {{Display Name}}` if they can show all of the following:

1. {{pass requirement 1}}
2. {{pass requirement 2}}
3. {{pass requirement 3}}

## Not Pass Conditions
`Gate {{N}}: {{Display Name}}` is `not pass` if any of the following is true:
- {{not pass condition 1}}
- {{not pass condition 2}}
- {{not pass condition 3}}

## Suggested Task Shape
The task should stay {{scope guidance}} and remain a real bounded exercise or problem.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate {{N}}: {{Display Name}}` should require the learner to:
- solve a bounded problem instead of transcribing a declaration list or code path
- make at least one meaningful decision about types, structure, decomposition, or diagnosis inside the stated constraints
- separate fixed requirements from allowed freedom while still making pass evidence visible
- {{task shape item 1}}
- {{task shape item 2}}
- {{task shape item 3}}

The task should not require:
- {{disallowed item 1}}
- {{disallowed item 2}}
- {{disallowed item 3}}

The task should also not hand over:
- the exact declaration list unless that exact syntax is itself the concept
- the final expression list for the whole solution
- a starter artifact that already determines the whole solution path

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- {{rubric dimension 1}}
- {{rubric dimension 2}}
- {{rubric dimension 3}}

## Common Failure Modes
- {{failure mode 1}}
- {{failure mode 2}}
- {{failure mode 3}}

## AI Guidance Constraints
For `Gate {{N}}: {{Display Name}}`, the AI should:
- {{constraint 1}}
- {{constraint 2}}
- {{constraint 3}}
- keep stronger help gated by the escalation policy instead of jumping straight to a solution
- evaluate against code, compile/build evidence, runtime output, and learner explanation as needed for the gate

The AI may refer to:
- `{{R-###}}` for {{reason}}

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- {{task support action 1}}
- {{task support action 2}}
- {{task support action 3}}

Use this escalation order unless the gate explicitly narrows it further:
1. Ask for the learner's current attempt plus their own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 after a real attempt or clearly stated blocker.
4. Use a controlled worked example or completion skeleton only after the learner has shown concrete effort and lower levels were not enough.
5. Use a full reference solution only on explicit request.

After a controlled worked example or reference solution, require:
- the learner's own explanation of what changed and why
- one small near-transfer variant or focused follow-up check

## Open Decisions Still Marked as Provisional
- {{open decision 1}}
