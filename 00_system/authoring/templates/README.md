# Templates

## Purpose
This folder holds the reusable templates for creating new phases and gates.
Use these files as the default starting point when generating new repo content.

## Rule
Copy the closest template first.
Do not invent a new local structure when the existing template already fits.

## Available Templates
- `phase/README.template.md`
- `gate/README.template.md`
- `gate/learner/PREP.template.md`
- `gate/learner/TASK.template.md`
- `gate/agent/READINESS.template.md`
- `gate/agent/SPEC.template.md`
- `gate/agent/EVALUATION.template.md`

No generic `workspace/` source template is included.
Starter code must stay aligned with the actual task for that gate.

## How To Use
1. Copy the relevant template files into the new phase or gate folder.
2. Replace every placeholder such as `{{Gate N}}` or `{{Task Title}}`.
3. Keep the standard headings unless there is a documented reason to differ.
4. Fill in the gate-specific content.
5. Run `.\00_system\authoring\validate-structure.ps1` from the repo root.
6. Verify the result against `../GATE_STRUCTURE.md`.
7. Verify learner/agent runtime expectations against `../../foundation/GATE_RUNTIME.md` when the gate behavior or evaluation flow changes.
8. Run the broader validation process from `../GATE_VALIDATION.md` when the gate is new or materially changed.

Phase-ending integration gates normally reuse the same gate templates.
Apply the additional integration-gate rules from `../GATE_STRUCTURE.md` rather than inventing a separate folder format.

## Template Hygiene
- Learner templates must stay learner-facing.
- Agent templates must stay agent-facing.
- Shared support files that learners open directly must not contain agent-only notes.
- A generated file is not complete if placeholders are still present.
