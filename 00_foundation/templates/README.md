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
5. Run `.\00_foundation\validate-structure.ps1` from the repo root.
6. Verify the result against `../GATE_STRUCTURE.md`.

## Template Hygiene
- Learner templates must stay learner-facing.
- Agent templates must stay agent-facing.
- Shared support files that learners open directly must not contain agent-only notes.
- A generated file is not complete if placeholders are still present.
