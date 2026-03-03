# Gate 1: Stack, Heap, and Storage Basics

## What This Gate Is
`Gate 1: Stack, Heap, and Storage Basics` is the second checkpoint in `Phase 0: C++ Foundations`.

This gate checks whether you can:
- create a tiny program with static, automatic, and dynamic storage examples
- compile and run it from the terminal
- explain which objects are alive at which points in the program
- clean up a dynamically allocated object in a controlled case

This gate is still small on purpose.
It is about first lifetime and storage reasoning, not advanced pointer work.

The current task title is `Storage Snapshot`.
The task is how this gate is exercised; it is not the gate name.

## Learner Flow
Follow this order:

1. Read [learner/PREP.md](./learner/PREP.md)
2. Complete the readiness dialogue with the agent
3. Work on [learner/TASK.md](./learner/TASK.md)
4. Write and run your code in `workspace/`
5. Ask the agent to evaluate your result

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
For the learner:
- [learner/PREP.md](./learner/PREP.md): what to read and understand first
- [learner/TASK.md](./learner/TASK.md): exact task requirements and self-check

For the agent:
- [agent/READINESS.md](./agent/READINESS.md): pre-task dialogue and readiness questions
- [agent/SPEC.md](./agent/SPEC.md): gate rules and pass criteria
- [agent/EVALUATION.md](./agent/EVALUATION.md): evaluation sheet

For the phase:
- [../README.md](../README.md): phase purpose and gate lineup

If you are the learner, focus on `learner/` plus `workspace/`.
