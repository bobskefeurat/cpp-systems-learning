# Gate 0: Numeric Types and Safety

## What This Gate Is
`Gate 0: Numeric Types and Safety` is the first checkpoint in `Phase 1: Core Language and Object Model`.

This gate builds your ability to:
- reason about mixed numeric types in a small program
- use brace initialization as a safer default against narrowing
- explain why unsigned arithmetic and floating-point comparison can surprise you

This gate is not about advanced math or optimization.
It is about predictable numeric behavior and safer numeric defaults.

## Status
This gate is currently `draft`.
It exists for development and review and is not part of the active default learner path.

## Learner Flow
This flow is for draft review only.
If you are reviewing this draft gate, start with [learner/PREP.md](./learner/PREP.md).

Then:
1. inspect the readiness and task flow
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`

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
Focus on:
- [learner/PREP.md](./learner/PREP.md)
- [learner/TASK.md](./learner/TASK.md)
- `workspace/`

For the phase overview, see [../README.md](../README.md).
