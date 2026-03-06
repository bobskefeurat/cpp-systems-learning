# Authoring

## Purpose
This folder holds the development-side rules and tools for creating, restructuring, and validating phases and gates.

## Contents
- `COURSE_PLAN.md`
  Current program-level course arc and rollout baseline derived from source-integration records.
- `GATE_STRUCTURE.md`
  Standard folder structure, file responsibilities, and naming rules for phases and gates.
- `GATE_VALIDATION.md`
  Repeatable validation workflow for new or materially changed gates.
- `CONTEXT_AUDIT.md`
  Repeatable audit workflow for checking whether mode splits and document layout reduce unnecessary context loading.
- `source_integration/`
  Rules and templates for converting external curriculum sources into normalized authoring data before phase, gate, or task generation.
- `validate-structure.ps1`
  Structural validation script.
- `templates/`
  Reusable templates for phases and gates.

## Read Order
1. Start with `GATE_STRUCTURE.md`.
2. Read `source_integration/` when external curriculum material should drive future phases, gates, or tasks.
3. Read `COURSE_PLAN.md` when deciding the next phase, rollout order, or source role at the program level.
4. Read `GATE_VALIDATION.md` when a new or heavily revised gate needs quality checks.
5. Read `CONTEXT_AUDIT.md` when mode defaults or system layout change.
6. Use `templates/` before drafting new gate content.
7. Run `validate-structure.ps1` before calling a generated gate structurally complete.
