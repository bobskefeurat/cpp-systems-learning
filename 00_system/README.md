# 00_system

## Purpose
This folder holds the repo-wide system layer for the course.
It separates the active runtime foundation from authoring rules, resource policy, and background material.

## Layout
- `MODES.md`
  Chat-mode definitions and context-loading rules.
- `TASK_ROUTING.md`
  Intent-to-file routing guide used after mode selection.
- `STATUS.md`
  Current active, planned, draft, and archived program surface.
- `save-solution.ps1`
  Helper that copies an evaluated workspace file into the tracked `solution/` snapshot for a gate.
- `foundation/`
  Active learner-facing runtime contract: goals, rules, core teacher policy, interaction protocols, terminology, and gate runtime model.
- `authoring/`
  Gate construction, phase generation, course concepts, phase blueprints, source integration, validation, context audit, templates, and structure tooling for repo maintenance.
- `resources/`
  Curated resources, concept routing, candidate sources, and learner-safe resource cards.
- `research/`
  Background reports and deep research artifacts.
- `archive/`
  Historical or retired material kept for reference only.

## Read Order
For `Utvecklingsläge`:
1. Start with `MODES.md`.
2. Use `TASK_ROUTING.md` when the right file set is not obvious.
3. Read `STATUS.md` when the task depends on what is active, planned, or draft.
4. Read only the subfolder that matches the task you are doing.
5. Load additional system files on demand, not by default.

For `Utbildningsläge`:
1. Start with `foundation/README.md`.
2. Follow the default context defined in `MODES.md`.
3. Use `TASK_ROUTING.md` when the right next file set is not obvious or the task crosses boundaries.
4. Bring in `resources/` only when learner-facing references or reading packets are needed.

## Rule
Do not treat every file in `00_system/` as equal runtime authority.
`foundation/` defines the active pedagogical contract.
`authoring/`, `research/`, and `archive/` exist for development and maintenance work.
