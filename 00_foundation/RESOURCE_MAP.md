# RESOURCE_MAP

## Purpose
Maps concepts and common weaknesses to resource IDs in `RESOURCES.md`.
Used for targeted repetition and consistent references.

## Rules
- Use only resource IDs that exist in `RESOURCES.md`.
- Prioritize 1-2 resources per concept.
- Keep the map short and practical.

## Baseline Note (v0)
- Current early-course baseline: `GCC via MSYS2 UCRT64 on Windows`.
- The exact language standard for `Phase 0: C++ Foundations` is still an open repo decision; do not infer it from this map alone.

## Map (v0-start)
| Concept / problem | When it appears | Primary resource ID | Secondary resource ID | Note |
|-------------------|-----------------|---------------------|-----------------------|------|
| Compilation and build basics | Cannot compile or read error messages | R-001 | R-002 | Use `R-001` for the learning path and `R-002` when `g++` command details or flags need exact interpretation. |
| Warnings and flags | Ignores warnings or cannot interpret them | R-002 | R-001 | Current baseline is GCC-family warnings, so official GCC docs should anchor the meaning of flags; use `R-001` for pedagogy. |
| Basic I/O | Gets stuck on `iostream` basics | R-001 | R-005 | Default prep for `Gate 0: Compile, Run, and Basic I/O` should use the `R-001` packet; use `R-005` only as fallback repetition when that is not enough. |
| Stack vs heap | Mixes up storage and lifetime | R-001 | R-003 | Teach this as lifetime/storage-duration reasoning first; use `R-003` only for precise follow-up definitions. |
| Value vs reference | Mixes up copy, reference, and parameter passing | R-001 | R-004 | Avoid advanced topics here; the goal is stable reasoning about copying, aliasing, and what changes at call sites. |
| Basic RAII | Does not understand lifetime/ownership in a simple class | R-001 | R-003 | Keep `Gate 3: First Class, Lifetime, and Basic RAII` focused on deterministic cleanup tied to object lifetime, not on broader smart-pointer coverage yet. |
