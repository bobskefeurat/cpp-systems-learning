# Gate 1: Stack, Heap, and Storage Basics

## What This Gate Is
`Gate 1: Stack, Heap, and Storage Basics` is the second checkpoint in `Phase 0: C++ Foundations`.

This gate builds your ability to:
- create a tiny program with static, automatic, and dynamic storage examples
- compile and run it from the terminal
- explain which objects are alive at which points in the program
- clean up a dynamically allocated object in a controlled case

This gate is still small on purpose.
It is about first lifetime and storage reasoning, not advanced pointer work.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

## Current Task
Current task: `Storage Snapshot`

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
