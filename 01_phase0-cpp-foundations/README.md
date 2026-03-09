# Phase 0: C++ Foundations

## Purpose
Phase 0 rebuilds the operational basics that later systems work depends on.
The goal is to make compilation, warnings, I/O, storage, references, and lifetime explicit and stable before the course moves deeper.

## What This Phase Builds
By the end of this phase, the learner should be able to:
- compile and run small C++ programs from the terminal
- treat warnings as part of the work, not as optional cleanup
- explain simple input/output and value flow
- reason at a first-pass level about storage, references, and object lifetime
- combine those basics in one bounded console program without relying on hidden IDE scaffolding

## Gate Lineup
Phase 0 has four micro-gates followed by one integration gate.

| Gate | Focus |
| --- | --- |
| [Gate 0](./gate0-compile-run-basic-io/README.md) | Compile/run flow, warnings, and basic `std::cin` / `std::cout` |
| [Gate 1](./gate1-stack-heap-and-storage-basics/README.md) | Automatic, static, and dynamic storage basics |
| [Gate 2](./gate2-values-references-and-parameter-passing/README.md) | Value copies, references, and parameter passing |
| [Gate 3](./gate3-first-class-lifetime-and-basic-raii/README.md) | First class/lifetime reasoning and basic RAII-shaped behavior |
| [Gate 4](./gate4-phase0-integration-project/README.md) | Phase-ending integration gate that combines the earlier phase concepts in one bounded project |

## How To Use This Phase
Every gate follows the shared learner/agent loop described in [../README.md](../README.md).

Working rule:
1. Open the current gate's `README.md`.
2. Move from `learner/PREP.md` into the readiness dialogue.
3. Start `learner/TASK.md` only after readiness is sufficient.
4. Work in `workspace/`.
5. Ask for evaluation when you have the required evidence.

After a full `pass`, the evaluated `workspace/main.cpp` may be archived in that gate's `solution/` directory.

`Gate 4` is larger than the earlier gates, but it still uses the same readiness, evidence, and pass/not-pass model.

## Where To Start
Start with [gate0-compile-run-basic-io/README.md](./gate0-compile-run-basic-io/README.md).

If you are returning mid-phase, open the current gate's `README.md` and continue from there.
