# Gate 2: Values, References, and Parameter Passing

## What This Gate Is
`Gate 2: Values, References, and Parameter Passing` is the third checkpoint in `Phase 0: C++ Foundations`.

This gate checks whether you can:
- write small functions that take parameters in different ways
- compile and run the program from the terminal
- show, with observable output, what changes after a call by value and a call by reference
- explain the difference between an argument, a parameter, a copy, and an alias

This gate is about stable reasoning at the call site.
It is not about advanced references, optimization, or generic API design.

The current task title is `Copy Or Alias`.
The task is how this gate is exercised; it is not the gate name.

## Learner Flow
Follow this order:

1. Read [learner/PREP.md](./learner/PREP.md)
2. Complete the readiness dialogue with the agent
3. Work on [learner/TASK.md](./learner/TASK.md)
4. Write and run your code in `workspace/`
5. Ask the agent to evaluate your result

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
