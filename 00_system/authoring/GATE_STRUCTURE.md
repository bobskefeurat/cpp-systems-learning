# GATE STRUCTURE

## Purpose
Defines the standard structure for future gate folders.
This file exists so that new gates follow the same format, responsibilities, and authoring rules.
It owns gate-local structure and document responsibilities, not the learner/agent runtime flow.

## Scope
Applies to all gate folders unless a gate has a clearly documented reason to differ.

## Reuse Rule
When creating a new phase or gate, start from the templates in `templates/`.
Keep the standard headings unless there is a documented reason to differ.

When generating new content with AI:
- copy the closest template first
- replace every placeholder before considering the file complete
- keep learner files learner-facing and agent files agent-facing
- avoid creating a second source of truth for task requirements, evidence, or pass criteria
- run `.\00_system\authoring\validate-structure.ps1` before considering the generated content structurally complete
- use `GATE_VALIDATION.md` for the broader quality-check process after the structure script passes

## Runtime Companion
For learner/agent runtime use inside a gate, see `../foundation/GATE_RUNTIME.md`.
This file stays focused on authoring, structure, and naming.

## Standard Folder Structure
Each gate should normally use:

- `README.md`
- `learner/`
- `agent/`
- `workspace/`

Gate folders normally live inside a phase folder whose path begins with a stable phase ID, such as `01_phase0-cpp-foundations`.
The containing phase folder should normally have its own `README.md` that names the phase and lists its gates.

## Phase-Ending Integration Gates (v0)
A phase may end with one integration gate.
An integration gate still uses the normal gate folder structure unless a documented exception is needed.

Purpose:
- integrate several earlier gate concepts in one bounded task
- test transfer, debugging, and explanation across those concepts
- end the phase with a meaningful but still controlled project

Default design rules:
- keep the same binary `pass` / `not pass` model as other gates
- keep the task larger than a micro-gate but still finishable in a few hours across several sessions
- combine several earlier gate concepts from the phase without introducing a major new topic
- allow some bounded design choice when it improves ownership, but keep required behaviors and invariants explicit
- a light authentic context is allowed when it helps motivation or transfer, but it must stay a framing device and not become a source of hidden requirements
- if full exact output is not practical, define required checkpoints, markers, or sample runs that still make pass requirements observable

For learner materials:
- `learner/PREP.md` should act as a refresh and integration checklist, not as a new theory chapter
- `learner/TASK.md` should say which parts are fixed requirements and which parts allow bounded freedom
- `learner/TASK.md` should require evidence from more than one run or check when that helps prevent hardcoded solutions
- if a contextual story is used, `learner/TASK.md` should state clearly that the exact technical requirements remain the source of truth

For agent materials:
- `agent/SPEC.md` should make the integrated concept coverage explicit
- `agent/EVALUATION.md` should check both functional completion and the structured explanation/defense required by the task
- remediation should target the weakest missing subsystem or invariant instead of restarting the whole integration gate when a smaller correction is enough

### Phase `README.md`
Purpose:
- entry point for the phase
- short orientation for what the phase is for
- overview of the gate arc in the phase
- where the learner or maintainer should start

Should contain:
- the phase name and purpose
- the capabilities the phase is meant to build
- the current gate lineup
- a concise picture of how the gates relate to each other, preferably through a small table, a Mermaid diagram, or both
- a clear indication of which gate is the phase-ending integration gate when the phase has one
- a short explanation of how to move through a gate in this phase
- the current recommended starting gate

Should not contain:
- detailed gate evaluation logic
- duplicated task instructions from a specific gate
- overlong prose that repeats what the gate READMEs already explain
- internal naming-policy discussion unless it is directly needed for orientation

Recommended style:
- keep the file phase-level rather than gate-level
- prefer fast orientation over exhaustive detail
- use Mermaid diagrams when they make the phase arc or the gate runtime loop easier to understand at a glance

Standard section order:
1. `# Phase N: <Display Name>`
2. `## Purpose`
3. `## What This Phase Builds`
4. `## Gate Lineup`
5. `## How To Use This Phase`
6. `## Where To Start`

## Responsibility Split

### `README.md`
Purpose:
- entry point for the gate
- short learner-first orientation
- primary work order
- where code is written and how it is run

Should contain:
- what the gate builds
- where the learner starts
- where code is written
- how to compile/run at a practical level
- the current task title when the gate currently has one
- concise links to learner and agent materials when needed

Should not contain:
- detailed evaluation logic
- long theory
- duplicated policy text
- duplicated task requirements that belong in `learner/TASK.md`
- submission or evaluation detail that belongs in learner or agent files
- a long internal file inventory when a short learner-first orientation is enough

Standard section order:
1. `# Gate N: <Display Name>`
2. `## What This Gate Is`
3. `## Learner Flow`
4. `## Current Task`
5. `## Where To Work`
6. `## Build And Run`
7. `## Files`

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

If `EXAMPLES.md` is used:
- it should contain controlled examples only when the gate deliberately allows them
- it must not become a default answer-key dump

Should contain only:
- what the learner should read
- what the learner should do
- what good completion looks like
- test cases
- check questions
- direct learner-facing language (`you`, `your`)

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

Standard section order:
1. `# Prepare for Gate N: <Display Name>`
2. `## Before You Start`
3. `## You Need To Explain`
4. `## Read This`
5. `## Stop When`
6. `## Next Step`

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

Standard section order:
1. `# Task: <Task Title>`
2. `## Goal`
3. `## Before You Start`
4. `## Task`
5. `## Constraints`
6. `## Build And Run` (when applicable)
7. `## Self-Check`
8. `## Be Ready To Explain`
9. `## Bring To Evaluation` (when needed)

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
- help-escalation triggers when stronger support is allowed
- remediation expectations for `not pass`
- enough evaluation guidance to tell the agent which evidence sources matter for the gate

Should not contain:
- learner-oriented task framing
- unnecessary tutorial writing

Standard file section order:
- `agent/READINESS.md`
  1. `# Readiness Check for Gate N: <Display Name>`
  2. `## Purpose`
  3. `## Core Concepts Covered`
  4. `## Standard Question Set`
  5. `## Readiness Standard`
  6. `## If the Learner Is Not Ready`
  7. `## Suggested AI Follow-Up Format`
  8. `## Next Step`
- `agent/SPEC.md`
  1. `# Gate N Spec: <Display Name> (draft v0)`
  2. `## Purpose`
  3. `## Current Baseline`
  4. `## What This Gate Covers`
  5. `## Required Evidence`
  6. `## Pass Requirements`
  7. `## Not Pass Conditions`
  8. `## Suggested Task Shape`
  9. `## Diagnostic Focus for the Rubric`
  10. `## Common Failure Modes`
  11. `## AI Guidance Constraints`
  12. `## AI Use During The Task`
  13. `## Open Decisions Still Marked as Provisional` (optional)
- `agent/EVALUATION.md`
  1. `# Gate N Evaluation Sheet: <Display Name> (draft v0)`
  2. `## Purpose`
  3. `## Gate Result`
  4. `## Binary Checklist`
  5. `## Gate Decision Rule`
  6. `## Rubric Snapshot`
  7. `## Strengths`
  8. `## Weakest Dimension(s)`
  9. `## Recommended Repetition`
  10. `## Next Check Question or Test Case`
  11. `## Resource Reminder`
  12. `## Notes for the Evaluator`

### `workspace/`
Purpose:
- the actual coding area for the learner

Should contain:
- source files
- task-aligned starter files when appropriate
- produced binaries if kept locally
- other gate-local work artifacts when appropriate

Should not contain:
- policy or guidance documents
- starter code that contradicts the current task

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
- If learner materials link directly to a shared support file, that file must also be safe for learner-facing use.

## Generation Checklist
Before a newly generated phase or gate is considered ready:
- the content starts from the matching template in `templates/`
- all template placeholders are replaced
- learner files do not contain agent-only instructions
- agent files do not repeat learner-facing task wording unless operationally necessary
- exact task requirements live in `learner/TASK.md`
- learner-facing evidence lives in `learner/TASK.md`
- pass / not pass rules live in `agent/SPEC.md`
- evaluator checklist lives in `agent/EVALUATION.md`
- `not pass` outcomes include concrete remediation and reattempt evidence
- gate evaluation guidance makes clear when code, compile output, runtime output, or learner explanation must be checked
- starter files in `workspace/` match the current task
- `.\00_system\authoring\validate-structure.ps1` passes
- the broader validation process in `GATE_VALIDATION.md` has been applied when the gate is new or materially changed

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
