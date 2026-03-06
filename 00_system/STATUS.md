# STATUS

## Purpose
This file is the quick status surface for the program.
Use it when a request depends on what is active, planned, draft, or historical.

It exists so that status does not need to be inferred from several README files.

## Status Terms
- `active`: part of the current default program path
- `planned`: intended next program surface, but not active yet
- `draft`: partial content exists and may be reviewed or edited, but it is not the active default path
- `archived`: kept only for history or reference

## Current Program Status

| Surface | Status | Read first | Notes |
| --- | --- | --- | --- |
| Repo mode system | active | `AGENTS.md`, `00_system/MODES.md`, `00_system/TASK_ROUTING.md` | Required startup path for every new chat |
| Phase 0: C++ Foundations | active | `01_phase0-cpp-foundations/README.md` | Current live learner path |
| Phase 1: Core Language and Object Model | planned | `02_phase1-core-language-and-object-model/README.md` | Planned next phase; rollout is not active yet |
| Phase 1 Gate 0: Numeric Types and Safety | draft | `02_phase1-core-language-and-object-model/gate0-numeric-types-and-safety/README.md` | Gate scaffold exists for development and review, but it is not part of the active default learner path |
| `00_system/foundation/` runtime contract | active | `00_system/foundation/README.md` | Governs learner-facing behavior in `Utbildningsläge` |
| `00_system/authoring/` workflow and templates | active | `00_system/authoring/README.md` | Governs development-side structure, validation, and generation |
| `00_system/research/` reports | active as background only | target research file | Informative material, not runtime authority |
| `00_system/archive/` | archived | target archive file | Historical reference only |

## Use Rules
- If a prompt asks "what is next", "what is live", or "where should this work go", read this file first.
- If a prompt is already scoped to one file, one gate, or one implementation change, this file is optional.
- When this file and a local README appear to disagree, treat this file as the program-status summary and the local README as the operational detail for that surface.
