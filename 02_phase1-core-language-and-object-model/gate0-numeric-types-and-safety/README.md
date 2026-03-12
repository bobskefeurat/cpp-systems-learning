# Gate 0: Numeric Types and Safety

## What This Gate Is
`Gate 0: Numeric Types and Safety` is the first checkpoint in `Phase 1: Core Language and Object Model`.

This gate builds your ability to:
- reason about mixed arithmetic, promotions, and unsigned wrap behavior in one bounded program
- use explicit numeric types and brace initialization as local safety guardrails
- explain why floating-point comparison needs a strategy instead of blind equality

This gate is not about bit tricks, numeric libraries, or performance tuning.
It is about predictable numeric behavior and first-pass safety decisions.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

## Current Task
Current task: `Numeric Safety Check`

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
