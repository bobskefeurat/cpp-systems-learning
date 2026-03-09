# Gate 2: Values, References, and Parameter Passing

## What This Gate Is
`Gate 2: Values, References, and Parameter Passing` is the third checkpoint in `Phase 0: C++ Foundations`.

This gate builds your ability to:
- write small functions that take parameters in different ways
- compile and run the program from the terminal
- show, with observable output, what changes after a call by value and a call by reference
- explain the difference between an argument, a parameter, a copy, and an alias

This gate is about stable reasoning at the call site.
It is not about advanced references, optimization, or generic API design.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

After a full `pass`, the evaluated workspace snapshot may be copied to `solution/`.

## Current Task
Current task: `Copy Or Alias`

Use [learner/TASK.md](./learner/TASK.md) for the exact prompt, constraints, self-check, and evaluation evidence.

## Where To Work
Write your code in:

```text
workspace/main.cpp
```

## Build And Run
Run these commands from the gate root:

```powershell
Set-Location workspace
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Files
If you are the learner, focus on:
- [learner/PREP.md](./learner/PREP.md)
- [learner/TASK.md](./learner/TASK.md)
- `workspace/`

Tracked pass snapshots live in `solution/`.

Agent control material lives in `agent/`:
- [READINESS.md](./agent/READINESS.md)
- [SPEC.md](./agent/SPEC.md)
- [EVALUATION.md](./agent/EVALUATION.md)

For the phase overview, see [../README.md](../README.md).
