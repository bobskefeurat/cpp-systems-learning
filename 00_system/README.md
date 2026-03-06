# 00_system

## Purpose
This folder holds the repo-wide system layer for the course.
It separates the active runtime foundation from authoring rules, resource policy, and background material.

## Layout
- `MODES.md`
  Chat-mode definitions and context-loading rules.
- `foundation/`
  Active learner-facing runtime contract: goals, rules, core teacher policy, interaction protocols, terminology, and gate runtime model.
- `authoring/`
  Gate construction, course planning, source integration, validation, context audit, templates, and structure tooling for repo maintenance.
- `resources/`
  Curated resources, concept routing, candidate sources, and learner-safe resource cards.
- `research/`
  Background reports and deep research artifacts.
- `archive/`
  Historical or retired material kept for reference only.

## Read Order
For `Utvecklingsläge`:
1. Start with `MODES.md`.
2. Read only the subfolder that matches the task you are doing.
3. Load additional system files on demand, not by default.

For `Utbildningsläge`:
1. Start with `foundation/README.md`.
2. Follow the default context defined in `MODES.md`.
3. Bring in `resources/` only when learner-facing references or reading packets are needed.

## Rule
Do not treat every file in `00_system/` as equal runtime authority.
`foundation/` defines the active pedagogical contract.
`authoring/`, `research/`, and `archive/` exist for development and maintenance work.
