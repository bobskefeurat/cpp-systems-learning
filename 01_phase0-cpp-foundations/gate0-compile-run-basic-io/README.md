# Gate 0: Compile, Run, and Basic I/O

## What This Gate Is
`Gate 0: Compile, Run, and Basic I/O` is the first checkpoint in `Phase 0: C++ Foundations`.

This gate checks whether you can:
- edit a small C++ program
- compile it from the terminal
- handle warnings
- use basic input and output

This gate is not about advanced C++.
It is about basic execution discipline.

The current task title is `Two Numbers`.
The task is how this gate is exercised; it is not the gate name.

## Folder Layout
- `learner/`: what the learner should read before and during the task
- `agent/`: AI-facing rules for readiness, evaluation, and gate control
- `workspace/`: where the code is written and compiled

## For The Learner
Follow this order:

1. Read [learner/PREP.md](./learner/PREP.md)
2. Complete the readiness dialogue with the agent
3. Work on [learner/TASK.md](./learner/TASK.md)
4. Ask the agent to evaluate your result

## Your Task
Current task: `Two Numbers`

Task summary:
- read two integers
- compute their sum
- print the result as `Sum: <result>`

For the exact requirements, test cases, and check questions, use [learner/TASK.md](./learner/TASK.md).

## Where To Work
Write your code in:

```text
workspace/main.cpp
```

## How To Compile
Run these commands from the gate root:

```powershell
Set-Location workspace
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
```

## How To Run

```powershell
Set-Location workspace
.\main
```

## Where Requirements Live
- [learner/TASK.md](./learner/TASK.md): exact task requirements, tests, and check questions
- [agent/READINESS.md](./agent/READINESS.md): readiness dialogue used before solution guidance
- [agent/SPEC.md](./agent/SPEC.md): pass criteria for the gate
- [agent/EVALUATION.md](./agent/EVALUATION.md): evaluator checklist and diagnostic notes

## Related Files
For the phase:
- [../README.md](../README.md): phase purpose and planned gate lineup

For the learner:
- [learner/PREP.md](./learner/PREP.md): what to read and understand first
- [learner/TASK.md](./learner/TASK.md): exact task

For the agent:
- [agent/READINESS.md](./agent/READINESS.md): pre-task dialogue and readiness questions
- [agent/SPEC.md](./agent/SPEC.md): gate rules and pass criteria
- [agent/EVALUATION.md](./agent/EVALUATION.md): evaluation sheet

The learner should focus on the files in `learner/` plus `workspace/`.
