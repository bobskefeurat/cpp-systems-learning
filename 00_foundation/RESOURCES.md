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
- Packet (optional local reading card)
- Status

## Curation Note (v0)
- Early `Phase 0: C++ Foundations` currently assumes `GCC via MSYS2 UCRT64 on Windows` as the practical baseline.
- MSVC- and WSL-specific candidates remain in `SOURCES.md` but are not curated here yet.
- Exact reading packets for specific curated resources can live in `resource_cards/`.
- If a resource has a local reading card, prefer that card for learner-facing reading guidance instead of a broad homepage or whole manual.

## Resources
| ID    | Title                                                                     | Type                            | Level                 | Concept/area                                                                              | When to use it                                                                                           | Source                                                                                            | Packet                              | Status         |
| ----- | ------------------------------------------------------------------------- | ------------------------------- | --------------------- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------- | -------------- |
| R-001 | LearnCpp.com - "Learn C++" tutorials                                      | Tutorial site                   | Beginner              | `Phase 0: C++ Foundations` spine: compile/run, warnings, syntax/I-O, stack/heap, references, classes, intro RAII | Use as the primary reading path for the early gates in `Phase 0: C++ Foundations`; assign specific lessons rather than the whole site | S-002 / https://www.learncpp.com/                                                                 | [R-001](./resource_cards/R-001.md) | active         |
| R-002 | Using the GNU Compiler Collection (GCC) - online manual                   | Official documentation / manual | Intermediate          | GCC compile model and flags on the current baseline                                       | Use when the learner needs exact meaning of `g++` flags, warning options, or standard-selection behavior | S-007 / https://gcc.gnu.org/onlinedocs/gcc/                                                       | [R-002](./resource_cards/R-002.md) | reference-only |
| R-003 | cppreference.com (C++ language and standard library reference)            | Reference site                  | Intermediate          | Long-term C++ lookup: storage duration, lifetime, references, RAII, standard library      | Use after the learner has a first mental model and needs a precise definition or lookup                  | S-008 / https://en.cppreference.com/w/                                                            | -                                   | reference-only |
| R-004 | Bjarne Stroustrup - C++ Style and Technique FAQ                           | FAQ / articles                  | Beginner-intermediate | `Gate 2: Values, References, and Parameter Passing` conceptual correction: value vs reference, pointers vs references, basic structure | Use when the learner forms bad rules of thumb about parameter passing or references                      | S-009 / https://www.stroustrup.com/bs_faq2.html                                                   | -                                   | reference-only |
| R-005 | MIT OpenCourseWare 6.096 - Introduction to C++ (IAP 2011) - Lecture Notes | University course notes         | Beginner-intermediate | Supplemental fundamentals and repetition: functions, pointers, classes, memory management | Use as a secondary explanation or repetition source when R-001 is not enough                             | S-003 / https://ocw.mit.edu/courses/6-096-introduction-to-c-january-iap-2011/pages/lecture-notes/ | -                                   | supplemental   |
