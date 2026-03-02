# SystemForge

Structured, AI-supported C++ training system focused on deep systems understanding.

## Purpose
SystemForge is a repository for building and running a staged C++ learning system.
It separates:
- foundation rules and policy
- phase-level progression
- gate-level tasks, readiness, and evaluation

The current design goal is a reproducible structure that can scale to new phases, gates, and tasks without losing clarity.

## Current Status
- active phase: [Phase 0: C++ Foundations](./01_phase0-cpp-foundations/README.md)
- active gate: [Gate 0: Compile, Run, and Basic I/O](./01_phase0-cpp-foundations/gate0-compile-run-basic-io/README.md)

## Repository Layout
- [AGENTS.md](./AGENTS.md)
  Repo entrypoint rules, including mandatory mode selection at chat start.
- [00_foundation/](./00_foundation/README.md)
  Governing documents, glossary, resource policy, and structure rules.
- [01_phase0-cpp-foundations/](./01_phase0-cpp-foundations/README.md)
  First active phase, including the current gate.

## How To Start
For repo work:
- start with [AGENTS.md](./AGENTS.md)
- then read [00_foundation/README.md](./00_foundation/README.md)

For learner-facing work in the active phase:
- start with [01_phase0-cpp-foundations/README.md](./01_phase0-cpp-foundations/README.md)
- continue to [gate0-compile-run-basic-io/README.md](./01_phase0-cpp-foundations/gate0-compile-run-basic-io/README.md)

## Notes
- The repository uses stable IDs plus slugs in phase and gate folder paths.
- Learner-facing external references are constrained by [RESOURCES.md](./00_foundation/RESOURCES.md) and local resource cards.
- Gate progression is binary: `pass` or `not pass`.
