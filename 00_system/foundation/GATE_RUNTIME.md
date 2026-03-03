# GATE RUNTIME

## Purpose
Defines the gate-local runtime contract used in `Utbildningsläge`.
This file explains what the standard gate files are for and how the learner and agent move through them.

## Scope
Applies to all gates unless a gate has a clearly documented reason to differ.
This file owns runtime use, not gate authoring or structural validation.

## Gate File Roles

### `README.md`
Use as the gate entrypoint.
It should orient the learner to what the gate is, where work happens, and how code is built and run.

### `learner/PREP.md`
Use for short pre-task preparation.
It should identify the gate's core concepts, point to exact readings, and tell the learner when to stop reading and move to readiness.

### `learner/TASK.md`
Use for the exact assignment.
It should contain the concrete task, constraints, test cases, self-checks, explanation prompts, and any evidence the learner must bring to evaluation.

### `agent/READINESS.md`
Use for the readiness dialogue.
It defines what the learner should already be able to explain before starting the task.

### `agent/SPEC.md`
Use as the gate's operational source of truth during evaluation.
It defines required evidence, pass requirements, not-pass conditions, invariants, and gate-specific AI constraints.

### `agent/EVALUATION.md`
Use as the evaluation worksheet.
It defines the binary checklist, the decision rule, the remediation loop, and the expected evaluation record.

### `workspace/`
Use as the actual coding area for the learner.
Starter code may exist, but it must match the current task.

## Standard Learner Flow
The default learner flow is:

1. Read `README.md`.
2. Read `learner/PREP.md`.
3. Complete readiness dialogue with the agent.
4. Work on `learner/TASK.md`.
5. Code in `workspace/`.
6. Ask the agent for evaluation.

## Standard Agent Flow
The default agent flow is:

1. Ensure the learner has completed preparation.
2. Use `learner/PREP.md` to identify the gate's core concepts.
3. Run the readiness check from `agent/READINESS.md`.
4. Support work on `learner/TASK.md` inside `workspace/` under the global policy and gate-local escalation rules.
5. Evaluate using `agent/SPEC.md` and `agent/EVALUATION.md`, verifying pass requirements against the relevant evidence sources.
6. If the result is `not pass`, assign a concrete remediation loop and reattempt path.

## Runtime Rule
Do not infer `pass` from correct runtime output alone when the gate also requires code form, compile behavior, or explanation.
Use the relevant gate files to determine which evidence sources matter.
