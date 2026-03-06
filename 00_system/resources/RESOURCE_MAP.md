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
- The active `Gate 0: Compile, Run, and Basic I/O` materials currently use `-std=c++20`.
- Future phases should prefer `R-001` packets first and use `R-003` only as precise follow-up unless a different curated companion source is explicitly required.

## Map (v0-start)
| Concept / problem | When it appears | Primary resource ID | Secondary resource ID | Note |
|-------------------|-----------------|---------------------|-----------------------|------|
| Compilation and build basics | Cannot compile or read error messages | R-001 | R-002 | Use `R-001` for the learning path and `R-002` when `g++` command details or flags need exact interpretation. |
| Warnings and flags | Ignores warnings or cannot interpret them | R-002 | R-001 | Current baseline is GCC-family warnings, so official GCC docs should anchor the meaning of flags; use `R-001` for pedagogy. |
| Basic I/O | Gets stuck on `iostream` basics | R-001 | R-005 | Default prep for `Gate 0: Compile, Run, and Basic I/O` should use the `R-001` packet; use `R-005` only as fallback repetition when that is not enough. |
| Stack vs heap | Mixes up storage and lifetime | R-001 | R-003 | Teach this as lifetime/storage-duration reasoning first; use `R-003` only for precise follow-up definitions. |
| Value vs reference | Mixes up copy, reference, and parameter passing | R-001 | R-004 | Avoid advanced topics here; the goal is stable reasoning about copying, aliasing, and what changes at call sites. |
| Basic RAII | Does not understand lifetime/ownership in a simple class | R-001 | R-003 | Keep `Gate 3: First Class, Lifetime, and Basic RAII` focused on deterministic cleanup tied to object lifetime, not on broader smart-pointer coverage yet. |
| Phase 0 integration | Can explain individual ideas but cannot combine them in one bounded program | R-001 | R-003 | Use the Gate 4 packet as a refresh map and remediate the weakest subsystem instead of restarting the whole integration task. |
| Numeric safety fundamentals | Confuses signed vs unsigned ranges, overflow, conversions, or floating-point comparison rules | R-001 | R-003 | Use the `Phase 1` numeric packet in `R-001` first; use `R-003` only to tighten exact conversion or arithmetic wording. |
| Enums and structs | Needs a bounded data model or cannot tell program-defined types apart | R-001 | R-005 | Keep the reading focused on enums, simple structs, and member access; do not expand into unions or broader type-system material. |
| Namespaces and basic code organization | Names collide or the learner cannot explain why a namespace boundary helps | R-001 | R-003 | Use the LearnCpp packet first; use `R-003` only for exact namespace wording or lookup clarification. |
| Function surface basics | Cannot reason about overloads, default arguments, inline, or simple recursion | R-001 | R-005 | Keep this to overloading, default arguments, inline as an ODR/header tool, and simple recursion; do not fold lambdas into this packet by default. |
| Lambda basics | Needs lambda syntax and capture without hidden STL prerequisites | R-006 | R-001 | Use `R-006` first for syntax, capture, and closure intuition; use the LearnCpp lambda lessons only after that or when containers/algorithms are explicitly in scope. |
| Preprocessor minimum | Needs enough preprocessor knowledge to work with headers and includes | R-001 | R-003 | Keep this to what preprocessing is, `#include`, header files, and header guards; defer macro programming. |
| Copy control basics | Confuses copying a class object with aliasing, assignment, or shared identity | R-001 | R-003 | Keep this before move semantics and before full polymorphism rollout. |
| Class surface and `this` | Cannot explain how a member function gets access to the current object | R-001 | R-003 | Keep this at the hidden-`this` and member-chaining level; do not expand into object layout or RTTI. |
| Inheritance introduction | Needs base/derived vocabulary before later polymorphism work | R-001 | R-003 | Keep this to first-pass inheritance and structure; do not expand to full virtual-dispatch requirements by default. |
| Virtual dispatch first pass | Needs base-reference or base-pointer dispatch vocabulary | R-001 | R-003 | Keep this to public inheritance, virtual functions, overriding, and virtual destructors; do not add RTTI or multiple inheritance. |
| Operator overloading and functors | Needs a first pass on operator surface or callable objects | R-001 | R-003 | Keep operators narrow and semantically obvious, and use `operator()` only as the first callable-object example. |
