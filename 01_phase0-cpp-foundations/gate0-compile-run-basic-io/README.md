# Gate 0: Compile, Run, and Basic I/O

## What This Gate Is
`Gate 0: Compile, Run, and Basic I/O` is the first checkpoint in `Phase 0: C++ Foundations`.

This gate builds your ability to:
- edit a small C++ program
- compile it from the terminal
- handle warnings
- use basic input and output

This gate is not about advanced C++.
It is about basic execution discipline.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

## Current Task
Current task: `Two Numbers`

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
Focus on:
- [learner/PREP.md](./learner/PREP.md)
- [learner/TASK.md](./learner/TASK.md)
- `workspace/`

For the phase overview, see [../README.md](../README.md).
