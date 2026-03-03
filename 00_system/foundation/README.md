# Foundation

## Purpose
This folder defines the active pedagogical and runtime foundation for the course system.
It should tell an agent which documents control learner-facing behavior during readiness, task support, and evaluation.

## Core Runtime Documents
- `README.md`
  Index and read order for the runtime foundation.
- `GOALS.md`
  Course purpose, target outcome, and scope constraints.
- `RULEBOOK.md`
  Global rules for learner progression and task-start behavior.
- `AI_TEACHER_POLICY.md`
  Agent behavior constraints, hinting policy, and readiness behavior.
- `GATE_RUNTIME.md`
  Gate-local runtime contract: what each gate file is for and how learner/agent flow should work.

## On-Demand Foundation Documents
- `RUBRIC.md`
  Diagnostic rubric used for analysis, not progression.
- `GLOSSARY.md`
  Canonical term definitions.
  Load when a term definition matters.

## Practical Read Order For An Agent
1. Start with `README.md`.
2. Read `GOALS.md`, `RULEBOOK.md`, and `AI_TEACHER_POLICY.md` to understand intent and behavior.
3. Read `GATE_RUNTIME.md` before working inside a gate as the course agent.
4. When working inside a specific phase, read the relevant phase `README.md` before the gate files.
5. Load `RUBRIC.md` only when evaluation or diagnostic language is needed.
6. Load `GLOSSARY.md` only when term precision matters.
7. Use `../resources/RESOURCES.md`, `../resources/RESOURCE_MAP.md`, and `../resources/resource_cards/` only when learner-facing references are needed.

## Boundaries
- `../authoring/` is for gate construction, templates, and validation workflow.
- `../resources/` is for curated reference policy and reading packets.
- `../research/` and `../archive/` are background material, not runtime authority.
