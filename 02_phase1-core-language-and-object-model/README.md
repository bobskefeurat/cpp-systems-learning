# Phase 1: Core Language and Object Model

## Purpose
Phase 1 deepens the language and object-model reasoning that Phase 0 prepares for.
It makes numeric behavior, bounded data models, function-surface choices, and the first dynamic object-model tradeoffs explicit.

This README locks the planned gate arc for the phase before full gate folders are generated.
Phase 1 is currently planned rather than active in the default learner path.

## What This Phase Builds
By the end of this phase, the learner should be able to:
- reason about signed and unsigned behavior, narrowing, arithmetic conversions, and bounded floating-point comparison
- choose between enums, structs, plain-data aggregates, and namespaces for small data models
- explain when overloading, default arguments, inline, recursion, lambda basics, and preprocessor minimum improve or harm clarity
- explain copy control basics, `this`, first-pass inheritance, first-pass virtual dispatch, and restrained operator overloading or functor use
- keep later-phase topics out of scope on purpose

Important guardrails for this phase:
- no macro programming beyond `#include`, header files, and header guards
- no raw-owning deep-copy tasks
- no RTTI or object-layout requirements
- no advanced lambda features or STL-algorithm-heavy lambda tasks by default
- no multiple inheritance

## Gate Lineup
Phase 1 is planned as four micro-gates followed by one integration gate.

| Planned gate path | Focus |
| --- | --- |
| [Gate 0](./gate0-numeric-types-and-safety/README.md) | Signed/unsigned reasoning, narrowing, arithmetic conversions, and floating-point comparison |
| `gate1-aggregates-and-language-organization` | Program-defined types, structs, aggregates, enums, and namespaces |
| `gate2-function-surface-and-callables` | Overloading, default arguments, inline, recursion, lambda basics, and preprocessor minimum |
| `gate3-special-members-and-dynamic-object-model` | Copy control, `this`, first-pass inheritance, virtual dispatch, operator overloading, and functors |
| `gate4-phase1-integration-project` | Phase-ending integration gate that combines numeric safety, small data modeling, function surface, and first-pass object-model reasoning in one bounded project |

## Current Status
Phase 1 is currently planned rather than active in the default learner path.
Use this README to review the intended phase arc and current scope.
Do not treat this phase as the current learner starting point.
The first gate has now been generated and can be used as the concrete review surface for the phase baseline.

## How To Use This Phase
Use this README as the planning overview for the phase.
If you are reviewing the current generated gate surface, inspect [gate0-numeric-types-and-safety/README.md](./gate0-numeric-types-and-safety/README.md).
If a later gate folder has not been generated yet, use the planning and resource files below to shape it.

Working rules for Phase 1 design:
1. Keep the phase bounded to the concepts listed above.
2. Use the curated packets in `R-001`, `R-003`, and `R-006` instead of broad site exploration.
3. Use the integration gate to combine earlier phase concepts rather than introduce later-phase topics.

`Gate 4` should stay larger than the earlier gates but still bounded enough to finish in a few hours across several sessions.

## Planning Sources
If you are planning a later gate that has not been generated yet, use:
- `00_system/authoring/COURSE_PLAN.md`
- `00_system/authoring/source_integration/records/mappings/M-001-modern-cpp-programming-course-plan.yaml`
- `00_system/resources/resource_cards/02_phase1-core-language-and-object-model/R-001.md`
- `00_system/resources/resource_cards/02_phase1-core-language-and-object-model/R-003.md`
- `00_system/resources/resource_cards/02_phase1-core-language-and-object-model/R-006.md`

as the current source of truth for the Phase 1 arc.

## Where To Start
For the current live learner path, use [../01_phase0-cpp-foundations/README.md](../01_phase0-cpp-foundations/README.md).

For Phase 1 development or rollout review, start with [gate0-numeric-types-and-safety/README.md](./gate0-numeric-types-and-safety/README.md).
