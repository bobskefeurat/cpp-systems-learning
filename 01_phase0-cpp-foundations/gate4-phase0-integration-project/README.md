# Gate 4: Phase 0 Integration Project

## What This Gate Is
`Gate 4: Phase 0 Integration Project` is the fifth and final checkpoint in `Phase 0: C++ Foundations`.

This gate builds your ability to:
- combine the main Phase 0 concepts in one bounded C++ program
- compile and run that program from the terminal with the baseline command
- keep warnings, storage, parameter passing, and lifetime behavior under control at the same time
- explain the key design and lifetime choices in your own words

This gate is larger than the earlier micro-gates on purpose.
It is still bounded: one source file, one small console program, and no major new topic.

The current task uses a light workplace-style framing:
you are building a tiny internal console tool for a team that wants a preview/apply flow plus simple lifetime tracing during a processing step.
The framing is there to make the task feel more real, not to add hidden requirements.

## Learner Flow
Start with [learner/PREP.md](./learner/PREP.md).

Then:
1. complete the readiness dialogue with the agent
2. work on [learner/TASK.md](./learner/TASK.md)
3. write and run your code in `workspace/`
4. ask the agent to evaluate your result

After a full `pass`, the evaluated workspace snapshot may be copied to `solution/`.

## Current Task
Current task: `Session Report`

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
