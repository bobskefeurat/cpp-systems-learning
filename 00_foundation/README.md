# 00_foundation

## Purpose
This folder defines the active foundation for the course system.
It should tell an agent which documents are governing, which are supporting, and which are only background material.

## Governing Documents
- `README.md`
  Index and authority map for the foundation layer.
- `MODES.md`
  Definitions for `Utvecklingsläge` and `Utbildningsläge`.
- `GOALS.md`
  Course purpose, target outcome, and scope constraints.
- `RULEBOOK.md`
  Global rules for learner progression and task-start behavior.
- `RUBRIC.md`
  Diagnostic rubric used for analysis, not progression.
- `AI_TEACHER_POLICY.md`
  Agent behavior constraints, hinting policy, and readiness behavior.
- `GLOSSARY.md`
  Canonical term definitions.
- `GATE_STRUCTURE.md`
  Standard folder structure and local responsibility split for gates.
- `GATE_VALIDATION.md`
  Repeatable validation process for newly created or heavily revised gates.
- `RESOURCES.md`
  Curated resources the agent is allowed to reference.
- `RESOURCE_MAP.md`
  Concept-to-resource routing for targeted support.

## Supporting Documents
- `SOURCES.md`
  Candidate pool for future curation. Not a direct learner-facing source list.
- `templates/README.md`
  Reusable templates for new phases and gates.
- `resource_cards/README.md`
  Rules for local reading packets.
- `resource_cards/R-###.md`
  Exact reading packets tied to curated resources.

## Non-Governing Material
- `archive/`
  Historical or retired documents kept for reference only.
- `research/`
  Research artifacts and background reports. These do not define current behavior.

## Practical Read Order For An Agent
1. Start with `README.md`.
2. Read `MODES.md` when mode-based behavior is active for the chat.
3. Read `GOALS.md`, `RULEBOOK.md`, and `AI_TEACHER_POLICY.md` to understand intent and behavior.
4. Read `GLOSSARY.md`, `GATE_STRUCTURE.md`, and `GATE_VALIDATION.md` to understand terms, local gate conventions, and how new gates are quality-checked.
5. Use `templates/` when creating a new phase or gate.
6. When working inside a specific phase, read the relevant phase `README.md` before the gate files.
7. Read `RESOURCES.md` and `RESOURCE_MAP.md` before naming external material.
8. Use `resource_cards/` when a curated resource has an exact reading packet.
9. Use `SOURCES.md` only for curation work, not for normal learner-facing guidance.
