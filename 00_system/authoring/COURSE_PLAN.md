# COURSE_PLAN

## Purpose
This file states the current program-level course plan derived from normalized source-integration records.

It exists so the repo can review and ratify:
- phase order
- source role per phase
- rollout status
- companion-source needs before new learner-facing phases or gates are generated

## Current Baseline
- Implemented today: `01_phase0-cpp-foundations`
- Planning backbone: `S-001-modern-cpp-programming.yaml` and `M-001-modern-cpp-programming-course-plan.yaml`
- Canonical concept inventory: `course_concepts/records/K-001-cpp-systems-learning.yaml`
- Phase-local coverage allocation: `phase_blueprints/`
- Scope of this file: phase planning, not canonical concept inventory or final gate inventory
- Current Phase 0 implementation is narrower than the full source-backed phase mapping and should not be forced into a 1:1 gate count
- `Modern-CPP-Programming` is currently an authoring backbone, not the default learner reading spine
- `LearnCpp` is the preferred primary reading source whenever it covers the planned concept at a learner-safe level
- Chapter 1 is kept as optional orientation and course-framing material only
- Learner-facing use of this source must still be curated through `resources/RESOURCES.md`

## Content Authority Model
- `Modern-CPP-Programming` decides what the program should cover at the curriculum level.
- `LearnCpp` should be the default primary reading source whenever it adequately covers the planned concept.
- Additional sources should be added only when `LearnCpp` is incomplete, too shallow, too advanced, or missing the planned concept entirely.
- Learner-facing tasks should be generated from the concepts supported by the curated reading layer, not merely from whatever appears in the curriculum backbone.
- A phase may exist in the course plan before it is learner-ready, but it should not become learner-facing until its required reading coverage exists in `RESOURCES.md` and `RESOURCE_MAP.md`.

## Planned Phase Arc
| Phase | Main Purpose | Source Role | Rollout Status |
| --- | --- | --- | --- |
| `01_phase0-cpp-foundations` | Build compile-run discipline, value flow, control flow, storage reasoning, parameter passing, and first class lifetime. | Selective secondary reading and authoring input only. | Implemented baseline exists. |
| `02_phase1-core-language-and-object-model` | Deepen type semantics, numeric behavior, and the first dynamic object model. | Secondary and reference reading with curated packets. | Next planning target. |
| `03_phase2-generic-programming` | Build a stable first model of templates, generic interfaces, and bounded compile-time constraints. | Secondary reading and reference support with aggressive narrowing. | Planned. |
| `04_phase3-translation-units-and-binary-boundaries` | Build a correct systems model for files, linkage, and binary boundaries. | Secondary reading plus targeted reference and repo-authored packets. | Planned. |
| `05_phase4-code-quality-debugging-and-tooling` | Build disciplined maintenance habits around structure, style, debugging, testing, and local tooling workflows. | Mainly authoring backbone and review/reference material. | Planned. |
| `06_phase5-standard-library-data-and-algorithms` | Build practical fluency with utilities, data representation choices, and algorithmic interfaces. | Secondary reading and reference anchor with tight surface-area control. | Planned. |
| `07_phase6-advanced-semantics-ownership-and-concurrency` | Deepen lifetime, moves, UB, ownership control, and concurrent execution. | Secondary reading and high-signal reference with heavy packetization. | Planned, high-risk for over-generation. |
| `08_phase7-performance-and-optimization` | Build measurement-first performance reasoning across cost models, locality, profiling, and throughput tradeoffs. | Reference-heavy planning input with measurement-first rollout. | Planned, needs explicit environment baselines. |
| `09_phase8-software-design-and-architecture` | Train larger-scale design judgment around interfaces, decomposition, architectural tradeoffs, and system evolution. | Authoring backbone and critique/reference material tied to concrete artifacts. | Planned, artifact-dependent. |
| `10_phase9-binary-and-build-engineering` | Build skill around artifact size, build latency, and their tradeoffs in larger C++ systems. | Secondary reading plus artifact-level reference. | Planned endgame phase. |

## Reading Source Strategy
This table states how the current plan expects `LearnCpp` and companion sources to support each phase.

| Phase | Coverage authority | Primary reading plan | Companion reading plan | Current status |
| --- | --- | --- | --- | --- |
| `01_phase0-cpp-foundations` | `Modern-CPP-Programming` mapping plus implemented Phase 0 | `R-001 LearnCpp` | `R-002`, `R-003`, `R-004`, `R-005` as targeted support | Active and already packetized |
| `02_phase1-core-language-and-object-model` | `Modern-CPP-Programming` | `R-001 LearnCpp` for numerics, aggregates, function-surface basics, copy control, and first-pass object-model work | `R-006` for lambda basics without STL prerequisite drift, `R-003 cppreference` for precision/reference, and `R-005 MIT OCW` for optional repetition | Next implementation target; learner-ready with bounded `gc103` scope and current curated packets |
| `03_phase2-generic-programming` | `Modern-CPP-Programming` | `R-001 LearnCpp` for function templates, class templates, and first-pass generic reasoning | `R-003 cppreference` for exact template rules; new companion packets likely needed for advanced template surface and constraints | Planned; partially coverable by LearnCpp |
| `04_phase3-translation-units-and-binary-boundaries` | `Modern-CPP-Programming` | `R-001 LearnCpp` only for the basic file/header/ODR model | `R-003 cppreference` for exact linkage and storage-language definitions; new curated build-model source likely required | Planned; LearnCpp only covers the introductory slice |
| `05_phase4-code-quality-debugging-and-tooling` | `Modern-CPP-Programming` | No strong `LearnCpp` spine expected | `R-003` for precise language/library lookups plus new curated tooling/debugging sources | Planned; requires new companion sources |
| `06_phase5-standard-library-data-and-algorithms` | `Modern-CPP-Programming` | `R-001 LearnCpp` for core STL, iterators, and algorithms where available | `R-003 cppreference` for precise library behavior and deeper lookup | Planned; likely workable with curated narrowing |
| `07_phase6-advanced-semantics-ownership-and-concurrency` | `Modern-CPP-Programming` | `R-001 LearnCpp` for move semantics and smart-pointer basics | `R-003 cppreference` for exact semantics; new concurrency reading source required | Planned; partially coverable by LearnCpp |
| `08_phase7-performance-and-optimization` | `Modern-CPP-Programming` | No strong `LearnCpp` spine expected beyond small measurement basics | New performance and profiling sources required, with `R-003` as precise support only where relevant | Planned; requires new companion sources |
| `09_phase8-software-design-and-architecture` | `Modern-CPP-Programming` | No strong `LearnCpp` spine expected | New design and architecture sources required, tied to local artifacts and critique format | Planned; requires new companion sources |
| `10_phase9-binary-and-build-engineering` | `Modern-CPP-Programming` | No strong `LearnCpp` spine expected | New binary-size, linker, and build-time sources required | Planned; requires new companion sources |

## Program-Level Decisions
- Treat `M-001` as the current course-planning baseline for future phases.
- Treat `K-001-cpp-systems-learning.yaml` as the canonical repo-owned concept inventory for implemented work and the current planning frontier.
- Require a phase blueprint before a new phase is treated as generation-ready.
- Generate future phase and gate work from mapped `unit_id` and `concept_id` records, not from raw links.
- Allocate mapped concepts into explicit per-phase coverage decisions before gate generation begins.
- Prefer `LearnCpp` as the first learner-facing reading source whenever it adequately covers a planned concept.
- If planned concepts are not adequately covered by `LearnCpp`, find and curate additional sources before the phase or gate becomes learner-facing.
- Generate learner-facing tasks from the concepts supported by curated reading coverage, not just from source-backbone topic presence.
- Keep Chapter 1 outside automatic phase, gate, and task generation.
- Do not treat the source as learner-safe primary reading until relevant material has been curated into `resources/RESOURCES.md`.
- Preserve phase locks from `M-001`; later chapters do not move earlier without manual review.

## Companion-Source Priorities
The current plan is structurally broad enough to cover the whole course, but learner-facing rollout still depends on additional curation.

Immediate priority areas:
1. Final `gc103` gate design and scope control for Phase 1 now that the lambda companion exists.
2. Template-introduction and template-constraints packets for Phase 2.
3. Translation-unit, linkage, and build-model packets for Phase 3.
4. Tooling, STL, concurrency, performance, design, and artifact-engineering packets for later phases.

## Next Phase Sufficiency Assessment
Target phase: `02_phase1-core-language-and-object-model`

Overall verdict:
- The source is sufficient for phase planning and selective gate authoring.
- The source is not sufficient as the sole learner-facing reading base for this phase.
- The phase can be implemented in its mapped form if the curated reading layer remains authoritative and `gc103` stays narrowed around lambda/preprocessor scope.

Current evidence behind that verdict:
- The mapped Phase 1 already says the source should be used as secondary/reference reading, not as the learner spine.
- Most of the included units in `S-001` are marked `task_authoring_role: supporting`, not `primary`.
- The current curated resource layer now covers `gc101`, `gc102`, and the first-pass `gc104` slice through `R-001` and `R-003`.
- The Phase 1 coverage audit in `research/deep-research-report-missing-reading-material-phase-1.md` confirms `LearnCpp` is sufficient for `gc101` and `gc102`, and sufficient for `gc104` when tasks stay in first-pass and Rule-of-Zero territory.
- The remaining non-trivial gap is `gc103`: lambda teaching needs a dedicated supplement to avoid STL prerequisite drift, and macro scope must stay minimal.

### Cluster Assessment
| Gate cluster | Sufficiency status | Assessment |
| --- | --- | --- |
| `gc101 Numeric Types and Safety` | Covered by LearnCpp plus existing companion sources | Learner-facing rollout is safe when tasks stay inside bounded conversion rules and do not require cppreference-first corner cases. |
| `gc102 Aggregates and Language Organization` | Covered by LearnCpp | This cluster is learner-ready as long as aggregates stay plain-data and namespace work stays at first-pass organization scope. |
| `gc103 Function Surface and Callables` | Ready only if narrowed | Overloading, default arguments, inline, recursion, and preprocessor minimum are covered by `LearnCpp`; lambda basics should route through `R-006`, and macro programming should stay deferred. |
| `gc104 Special Members and Dynamic Object Model` | Covered by LearnCpp plus existing companion sources | Copy control, `this`, inheritance, first-pass virtual dispatch, and restrained operator overloading are rolloutable if tasks stay in Rule-of-Zero and value-semantics territory. |

### Decision For The Next Implemented Phase
`02_phase1-core-language-and-object-model` remains the intended next implementation target in its mapped form.

Recommended rollout scope:
1. Numeric safety fundamentals, with strict scope control around conversions, overflow, floating comparison, and safe reasoning.
2. Aggregates and language organization, centered on enums, structs, namespaces, and plain-data aggregates.
3. Function-surface basics, including overloading, default arguments, inline, recursion, lambda syntax/capture basics, and preprocessor minimum.
4. Special members and dynamic object model, including copy control, `this`, first-pass inheritance and virtual dispatch, and restrained operator overloading/functors.

Recommended deferrals and guardrails:
1. Macro programming beyond `#include`, header files, and header guards.
2. Advanced lambda topics and algorithm-driven lambda tasks that pull in STL prerequisites too early.
3. RTTI and object layout.
4. Manual deep-copy ownership patterns with raw owning pointers.
5. Multiple inheritance and exotic operator overloads.

### Current Rollout Constraints
1. Use `R-006` for Phase 1 lambda basics before falling back to `LearnCpp` lambda lessons.
2. Keep preprocessor work at the `#include`, header-files, and header-guards level; do not assign macro programming as normal Phase 1 reading.
3. Keep copy-control tasks inside Rule-of-Zero and value-semantics territory; do not require raw owning deep-copy implementations.
4. Keep inheritance, virtual dispatch, and operator-overloading tasks at first-pass scope.

## Next Planning Checkpoint
Before new phase generation starts, review `M-001`, the course concept map, and the relevant phase blueprint against this file and lock:
- whether `02_phase1-core-language-and-object-model` is the next implemented phase
- whether the current Phase 1 scope controls are accepted as the learner-facing baseline
- whether the current Phase 0 implementation needs refinement before expanding the course
