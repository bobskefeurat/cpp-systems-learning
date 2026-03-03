# Gate 3: First Class, Lifetime, and Basic RAII

## What This Gate Is
`Gate 3: First Class, Lifetime, and Basic RAII` is the fourth checkpoint in `Phase 0: C++ Foundations`.

This gate builds your ability to:
- define a tiny class with a constructor and destructor
- compile and run the program from the terminal
- show, with exact output, when objects are created and destroyed
- explain why scope-bound destruction is the basic RAII idea in this gate

This gate is still small on purpose.
It is about first class-based lifetime reasoning, not about smart pointers, copy control, or advanced object-oriented design.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

## Current Task
Current task: `Lifetime Log`

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

Agent control material lives in `agent/`:
- [READINESS.md](./agent/READINESS.md)
- [SPEC.md](./agent/SPEC.md)
- [EVALUATION.md](./agent/EVALUATION.md)

For the phase overview, see [../README.md](../README.md).
