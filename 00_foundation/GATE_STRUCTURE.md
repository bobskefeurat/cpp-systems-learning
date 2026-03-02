# GATE STRUCTURE

## Purpose
Defines the standard structure for future gate folders.
This file exists so that new gates follow the same format, responsibilities, and workflow.
It owns gate-local structure and document responsibilities, not the full global behavior policy.

## Scope
Applies to all gate folders unless a gate has a clearly documented reason to differ.

## Standard Folder Structure
Each gate should normally use:

- `README.md`
- `learner/`
- `agent/`
- `workspace/`

Gate folders normally live inside a phase folder whose path begins with a stable phase ID, such as `01_phase0-cpp-foundations`.
The containing phase folder should normally have its own `README.md` that names the phase and lists its gates.

### Phase `README.md`
Purpose:
- entry point for the phase
- short orientation for what the phase is for
- overview of the gates in the phase
- where the learner or maintainer should start

Should contain:
- the phase name and purpose
- the capabilities the phase is meant to build
- the current gate lineup
- the current recommended starting gate

Should not contain:
- detailed gate evaluation logic
- duplicated task instructions from a specific gate
- internal naming-policy discussion unless it is directly needed for orientation

## Responsibility Split

### `README.md`
Purpose:
- entry point for the gate
- short orientation
- primary work order
- where code is written and how it is run

Should contain:
- what the gate is
- where the learner starts
- where code is written
- how to compile/run at a practical level
- the current task title when the gate currently has one
- links to learner and agent materials

Should not contain:
- detailed evaluation logic
- long theory
- duplicated policy text
- duplicated task requirements that belong in `learner/TASK.md`
- submission or evaluation detail that belongs in learner or agent files

### `learner/`
Purpose:
- learner-facing working material

Should normally contain:
- `PREP.md`
- `TASK.md`

May later contain:
- `EXAMPLES.md`
- `FAQ.md`
- other learner-facing support files when needed

Should contain only:
- what the learner should read
- what the learner should do
- what good completion looks like
- test cases
- check questions

Should not contain:
- AI control rules
- evaluator instructions
- binary gate logic in full detail

### `learner/PREP.md`
Purpose:
- short pre-task preparation
- identify the gate's core concepts
- tell the learner what to read before starting
- define when the learner should stop reading and move to readiness

Should contain:
- the core concepts for the gate
- a small reading plan
- a practical stop condition
- the next step into readiness

Should not contain:
- the exact task requirements
- detailed test cases
- submission evidence or pass/fail criteria

### `learner/TASK.md`
Purpose:
- the exact exercise the learner should complete
- concrete rules, tests, and completion expectations

Should contain:
- the task prompt
- file/workspace constraints
- build/run constraints when they are part of the task requirements
- test cases
- check questions
- submission evidence when needed

Should not contain:
- long preparation material
- broad concept teaching that belongs in `PREP.md`
- agent-facing evaluation logic

### `agent/`
Purpose:
- agent-facing control material

Should normally contain:
- `READINESS.md`
- `SPEC.md`
- `EVALUATION.md`

Should contain:
- readiness protocol
- pass / not pass criteria
- evaluator checklist
- AI behavior constraints
- allowed resource usage for that gate

Should not contain:
- learner-oriented task framing
- unnecessary tutorial writing

### `workspace/`
Purpose:
- the actual coding area for the learner

Should contain:
- source files
- produced binaries if kept locally
- other gate-local work artifacts when appropriate

Should not contain:
- policy or guidance documents

## Standard Learner Flow
The default learner flow is:

1. Read `README.md`
2. Read `learner/PREP.md`
3. Complete readiness dialogue with the agent
4. Work on `learner/TASK.md`
5. Code in `workspace/`
6. Ask the agent for evaluation

## Standard Agent Flow
The default agent flow is:

1. Ensure the learner has completed preparation
2. Use `learner/PREP.md` to identify the gate's core concepts
3. Run the readiness check from `agent/READINESS.md`
4. Support work on `learner/TASK.md` inside `workspace/` under the global policy
5. Evaluate using `agent/SPEC.md` and `agent/EVALUATION.md`

## Required Files
A gate is normally not considered structurally complete without:
- `README.md`
- `learner/PREP.md`
- `learner/TASK.md`
- `agent/READINESS.md`
- `agent/SPEC.md`
- `agent/EVALUATION.md`
- `workspace/`

## Optional Files
Optional files may be added only when they solve a real problem.
Examples:
- extra learner examples
- extra evaluator notes
- gate-specific troubleshooting

## Content Rules
- Keep learner content learner-facing.
- Keep agent content agent-facing.
- Shared factual information may appear in both places when needed.
- Avoid duplicating policy text unless it is needed locally for operational clarity.

## Resource Use
- Learner prep should point to exact reading packets when possible.
- Gates should prefer curated resource cards over broad homepages.
- Agent references must still stay within `RESOURCES.md`.

## Naming Convention
Use stable IDs plus readable slugs in paths, and display names in documents.

- Phase folder paths should use `<phase-id>-<slug>`, such as `01_phase0-cpp-foundations`.
- Gate folder paths should use `<gate-id>-<slug>`, such as `gate0-compile-run-basic-io`.
- The path should start with the stable ID so cross-references remain durable even if the wording evolves slightly.
- Phase `README.md` titles should use `Phase N: <Display Name>`.
- Gate `README.md` titles should use `Gate N: <Display Name>`.
- Learner task titles should be separate from the gate display name.
- A gate may keep the same display name even if the concrete task changes.

Use the same folder and file names across gates unless there is a strong reason not to.
Consistency is preferred over local creativity.

## Change Rule
If a future gate needs a different structure, the reason should be documented explicitly.
The default is to reuse this format.
