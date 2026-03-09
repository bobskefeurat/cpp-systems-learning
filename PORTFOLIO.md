# Portfolio

## Purpose
This file is the quick index for tracked gate solutions in this repository.

`workspace/` is the live scratch area.
`solution/` holds the tracked snapshot that reached a full `pass` for a gate.

For the full task and evaluation context behind each solution, open the gate `README.md`.

## Available Solution Snapshots

### Phase 0: C++ Foundations

| Gate | What It Shows | Tracked Solution |
| --- | --- | --- |
| [Gate 0: Compile, Run, and Basic I/O](./01_phase0-cpp-foundations/gate0-compile-run-basic-io/README.md) | terminal compile/run flow, warnings, and simple console I/O | [solution/main.cpp](./01_phase0-cpp-foundations/gate0-compile-run-basic-io/solution/main.cpp) |
| [Gate 1: Stack, Heap, and Storage Basics](./01_phase0-cpp-foundations/gate1-stack-heap-and-storage-basics/README.md) | static, automatic, and dynamic storage with explicit cleanup | [solution/main.cpp](./01_phase0-cpp-foundations/gate1-stack-heap-and-storage-basics/solution/main.cpp) |
| [Gate 2: Values, References, and Parameter Passing](./01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/README.md) | pass-by-value vs pass-by-reference behavior using the same caller variable | [solution/main.cpp](./01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/solution/main.cpp) |

## Gates Without A Tracked Solution Yet

These gates have the standard `solution/` directory, but no committed `solution/main.cpp` yet:

- [Gate 3: First Class, Lifetime, and Basic RAII](./01_phase0-cpp-foundations/gate3-first-class-lifetime-and-basic-raii/README.md)
- [Gate 4: Phase 0 Integration Project](./01_phase0-cpp-foundations/gate4-phase0-integration-project/README.md)
- [Phase 1 Gate 0: Numeric Types and Safety](./02_phase1-core-language-and-object-model/gate0-numeric-types-and-safety/README.md)

## Update Rule
When a gate reaches full `pass`, copy the evaluated `workspace/main.cpp` into that gate's `solution/main.cpp`.

Standard command from the repo root:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\00_system\save-solution.ps1 -GateDir <gate-path>
```
