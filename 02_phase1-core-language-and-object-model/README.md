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

## How To Use This Phase
Use this README as the phase baseline while the full gate lineup is still being generated.
When a gate folder already exists, enter through that gate's `README.md`.
When a later gate folder has not been generated yet, use the planning record and curated packets listed below as the current fallback baseline.
Phase 1 uses the same shared learner/agent loop described in [../README.md](../README.md).

Working rule for Phase 1:
1. Start with the current gate's `README.md`.
2. Use the curated packets in `R-001`, `R-003`, and `R-006` instead of broad site exploration.
3. Treat scope control as part of the work, not as optional polish.
4. Use the integration gate to combine earlier phase concepts, not to introduce later-phase topics.

`Gate 4` should stay larger than the earlier gates but still bounded enough to finish in a few hours across several sessions.

## Where To Start
Start with [gate0-numeric-types-and-safety/README.md](./gate0-numeric-types-and-safety/README.md).

If you are planning a later gate that has not been generated yet, use:
- `00_system/authoring/COURSE_PLAN.md`
- `00_system/authoring/source_integration/records/mappings/M-001-modern-cpp-programming-course-plan.yaml`
- `00_system/resources/resource_cards/R-001.md`
- `00_system/resources/resource_cards/R-003.md`
- `00_system/resources/resource_cards/R-006.md`

as the current source of truth for the Phase 1 arc.
