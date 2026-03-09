# Gate 0: Numeric Types and Safety

## What This Gate Is
`Gate 0: Numeric Types and Safety` is the first checkpoint in `Phase 1: Core Language and Object Model`.

This gate builds your ability to:
- reason about mixed numeric types in a small program
- use brace initialization as a safer default against narrowing
- explain why unsigned arithmetic and floating-point comparison can surprise you

This gate is not about advanced math or optimization.
It is about predictable numeric behavior and safer numeric defaults.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

After a full `pass`, the evaluated workspace snapshot may be copied to `solution/`.

## Current Task
Current task: `Numeric Safety Snapshot`

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
