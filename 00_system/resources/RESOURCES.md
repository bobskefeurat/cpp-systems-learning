# RESOURCES

## Purpose
Curated resource list with stable IDs that AI may reference.
Only resources listed here may be named in recommendations and hints.

## ID Format (v0)
- Format: `R-###` (example: `R-001`)
- IDs are stable and must not be reused for a different resource.

## Fields Per Resource (v0)
- ID
- Title
- Type
- Level
- Concept/area
- When to use it
- Source (URL or reference to `SOURCES.md`)
- Packet index (optional local reading-card index)
- Status

## Curation Note (v0)
- Early `Phase 0: C++ Foundations` currently assumes `GCC via MSYS2 UCRT64 on Windows` as the practical baseline.
- `R-001 LearnCpp` is the preferred primary reading source whenever it adequately covers the planned concept at a learner-safe level.
- MSVC- and WSL-specific candidates remain in `SOURCES.md` but are not curated here yet.
- Exact reading packets for specific curated resources live in phase folders under `resource_cards/`.
- The top-level `resource_cards/R-###.md` files are stable indexes that point to phase-local cards.
- If a resource has a local reading card, prefer the phase-local card for learner-facing reading guidance instead of a broad homepage or whole manual.
- Exact external links used in learner-facing packets must be content-verified before use and updated if the target page changes.

## Resources
| ID    | Title                                                                     | Type                            | Level                 | Concept/area                                                                              | When to use it                                                                                           | Source                                                                                            | Packet index                        | Status         |
| ----- | ------------------------------------------------------------------------- | ------------------------------- | --------------------- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------- | -------------- |
| R-001 | LearnCpp.com - "Learn C++" tutorials                                      | Tutorial site                   | Beginner              | Primary learner-facing reading for early phases: `Phase 0: C++ Foundations` plus most of `Phase 1: Core Language and Object Model`, including numerics, aggregates, function-surface basics, copy control, and first-pass object-model work | Use as the default learner reading path whenever a planned concept is adequately covered; assign exact lessons through the resource card rather than sending the learner to the whole site | S-002 / https://www.learncpp.com/                                                                 | [R-001](./resource_cards/R-001.md) | active         |
| R-002 | Using the GNU Compiler Collection (GCC) - online manual                   | Official documentation / manual | Intermediate          | GCC compile model and flags on the current baseline                                       | Use when the learner needs exact meaning of `g++` flags, warning options, or standard-selection behavior | S-007 / https://gcc.gnu.org/onlinedocs/gcc/                                                       | [R-002](./resource_cards/R-002.md) | reference-only |
| R-003 | cppreference.com (C++ language and standard library reference)            | Reference site                  | Intermediate          | Long-term precise lookup: numerics, aggregates, enums/namespaces, lifetime, copy control, object model, and standard library behavior | Use after the learner has a first mental model and needs a precise definition or lookup                  | S-008 / https://en.cppreference.com/w/                                                            | [R-003](./resource_cards/R-003.md) | reference-only |
| R-004 | Bjarne Stroustrup - C++ Style and Technique FAQ                           | FAQ / articles                  | Beginner-intermediate | `Gate 2: Values, References, and Parameter Passing` conceptual correction: value vs reference, pointers vs references, basic structure | Use when the learner forms bad rules of thumb about parameter passing or references                      | S-009 / https://www.stroustrup.com/bs_faq2.html                                                   | [R-004](./resource_cards/R-004.md) | reference-only |
| R-005 | MIT OpenCourseWare 6.096 - Introduction to C++ (IAP 2011) - Lecture Notes | University course notes         | Beginner-intermediate | Supplemental fundamentals and repetition: functions, pointers, classes, memory management | Use as a secondary explanation or repetition source when R-001 is not enough                             | S-003 / https://ocw.mit.edu/courses/6-096-introduction-to-c-january-iap-2011/pages/lecture-notes/ | -                                   | supplemental   |
| R-006 | CppCon 2020 - Back to Basics: Lambda Expressions                          | Conference slide deck / supplement | Beginner-intermediate | `Phase 1: Core Language and Object Model` lambda syntax and capture basics without pulling in STL algorithms or containers as hidden prerequisites | Use only when a Phase 1 gate includes lambda basics; assign through the resource card and keep scope to syntax, capture modes, and callable-object intuition | S-010 / https://github.com/CppCon/CppCon2020/blob/main/Presentations/back_to_basics_lambda_expressions/back_to_basics_lambda_expressions__barbara_geller__ansel_sermersheim__cppcon_2020.pdf | [R-006](./resource_cards/R-006.md) | active         |
