# Authoring

## Purpose
This folder holds the development-side rules and tools for creating, restructuring, and validating phases and gates.

## Contents
- `COURSE_PLAN.md`
  Current program-level course arc and rollout baseline derived from source-integration records.
- `PHASE_GENERATION.md`
  Repeatable workflow for generating a whole phase from canonical course concepts and a phase blueprint.
- `PHASE_VALIDATION.md`
  Repeatable quality-check process for concept coverage and gate completeness across a whole phase.
- `TASK_DESIGN.md`
  Task-design policy for writing real exercises and problems instead of fill-in-the-blank answer keys.
- `GATE_STRUCTURE.md`
  Standard folder structure, file responsibilities, and naming rules for phases and gates.
- `GATE_VALIDATION.md`
  Repeatable validation workflow for new or materially changed gates.
- `course_concepts/`
  Canonical repo-owned concept inventory used to prevent concept loss between source mappings and generated phases.
- `phase_blueprints/`
  Phase-local concept allocation and coverage records used before gate generation begins.
- `CONTEXT_AUDIT.md`
  Repeatable audit workflow for checking whether mode splits and document layout reduce unnecessary context loading.
- `source_integration/`
  Rules and templates for converting external curriculum sources into normalized authoring data before phase, gate, or task generation.
- `validate-structure.ps1`
  Structural validation script.
- `templates/`
  Reusable templates for phases and gates.

## Read Order
1. Start with `PHASE_GENERATION.md` for new-phase work, or `GATE_STRUCTURE.md` for local gate work.
2. Read `TASK_DESIGN.md` before writing or materially revising `learner/TASK.md`.
3. Read `course_concepts/` and `phase_blueprints/` when concept allocation or coverage completeness matters.
4. Read `source_integration/` when external curriculum material should drive future phases, gates, or tasks.
5. Read `COURSE_PLAN.md` when deciding the next phase, rollout order, or source role at the program level.
6. Read `PHASE_VALIDATION.md` for whole-phase quality checks and `GATE_VALIDATION.md` for gate-local checks.
7. Read `CONTEXT_AUDIT.md` when mode defaults or system layout change.
8. Use `templates/` before drafting new gate content.
9. Run `validate-structure.ps1` before calling a generated gate structurally complete.
