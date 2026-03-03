# Gate {{N}}: {{Display Name}}

## What This Gate Is
`Gate {{N}}: {{Display Name}}` is a checkpoint in `Phase {{N}}: {{Display Name}}`.

This gate checks whether you can:
- {{ability 1}}
- {{ability 2}}
- {{ability 3}}

This gate is not about {{what it is not about}}.
It is about {{what it is about}}.

The current task title is `{{Task Title}}`.
The task is how this gate is exercised; it is not the gate name.

## Learner Flow
Follow this order:

1. Read [learner/PREP.md](./learner/PREP.md)
2. Complete the readiness dialogue with the agent
3. Work on [learner/TASK.md](./learner/TASK.md)
4. Write and run your code in `workspace/`
5. Ask the agent to evaluate your result

## Current Task
Current task: `{{Task Title}}`

Use [learner/TASK.md](./learner/TASK.md) for the exact prompt, constraints, self-check, and evaluation evidence.

## Where To Work
Write your code in:

```text
{{workspace path}}
```

## Build And Run
Run these commands from the gate root:

```powershell
{{build step}}
{{run step}}
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
- [../README.md](../README.md): phase purpose and planned gate lineup

If you are the learner, focus on `learner/` plus `workspace/`.
