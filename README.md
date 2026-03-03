# C++ Systems Learning

Structured C++ training system designed around an integrated Codex workflow in the editor.

## Purpose
This repository is a staged C++ learning system, not just a collection of exercises.
It is built to support a human-plus-agent workflow where the learner works locally in the codebase and the agent operates inside a bounded teaching structure.

The aim is durable understanding:
- real compile/run ability
- correct mental models for storage, lifetime, and memory
- disciplined debugging and design reasoning
- AI used as a controlled teacher, not a default answer generator

## Intended Workflow
> *This system was designed around using OpenAI Codex as an integrated coding agent, primarily in VS Code.*
>
> *The repository structure, phase/gate model, and agent instructions are meant to support a workflow where the learner works locally in the editor while Codex provides controlled readiness checks, task support, and gate evaluation inside the same workspace.*
>
> *The setup was developed in VS Code and assumes an editor-centered workflow rather than a standalone chat-only experience.*

## Program Model
- A `phase` builds one larger capability area.
- A `gate` is a bounded checkpoint inside that phase.
- Each gate separates learner-facing material from agent-facing readiness and evaluation rules.
- Progression is binary: `pass` or `not pass`.
- Each phase may end with an integration gate: a larger bounded task that combines earlier concepts without introducing a major new topic.

## Phase 0: C++ Foundations
[Phase 0](./01_phase0-cpp-foundations/README.md) rebuilds basic C++ execution ability before deeper systems work. It focuses on compile/run discipline, warnings, basic I/O, storage, references, lifetime, and a final bounded integration task.

Current gate lineup:

1. [Gate 0: Compile, Run, and Basic I/O](./01_phase0-cpp-foundations/gate0-compile-run-basic-io/README.md)
2. [Gate 1: Stack, Heap, and Storage Basics](./01_phase0-cpp-foundations/gate1-stack-heap-and-storage-basics/README.md)
3. [Gate 2: Values, References, and Parameter Passing](./01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/README.md)
4. [Gate 3: First Class, Lifetime, and Basic RAII](./01_phase0-cpp-foundations/gate3-first-class-lifetime-and-basic-raii/README.md)
5. [Gate 4: Phase 0 Integration Project](./01_phase0-cpp-foundations/gate4-phase0-integration-project/README.md)

## Resource Base
The course uses a curated set of baseline resources instead of sending learners to arbitrary tutorials. The active list lives in [00_system/resources/RESOURCES.md](./00_system/resources/RESOURCES.md), and concept routing lives in [00_system/resources/RESOURCE_MAP.md](./00_system/resources/RESOURCE_MAP.md).

- `LearnCpp` as the main reading spine for early C++
- `GCC` documentation for precise compiler and flag behavior
- `cppreference` for exact language lookup
- `Stroustrup FAQ` for correcting common misconceptions
- `MIT OpenCourseWare` as supplemental repetition material

The practical baseline for the early course is:
- Windows
- `g++` via `MSYS2 UCRT64`
- `-std=c++20`
- `-Wall -Wextra -Wpedantic`

## Start Here
- Repo and system work: [AGENTS.md](./AGENTS.md) then [00_system/README.md](./00_system/README.md)
- Current course content: [01_phase0-cpp-foundations/README.md](./01_phase0-cpp-foundations/README.md)
