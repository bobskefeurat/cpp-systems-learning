# Gate {{N}} Evaluation Sheet: {{Display Name}} (draft v0)

## Purpose
Use this sheet to evaluate `Gate {{N}}: {{Display Name}}` with:
- a binary gate result: `pass` or `not pass`
- a short diagnostic note aligned with the project rubric

Gate progression is binary.
The diagnostic note exists to explain the result and guide repetition.

## Gate Result
- Gate: `pass` / `not pass`

## Binary Checklist
Mark each item as `yes` or `no`.

| Check | Result |
|------|--------|
| {{binary check 1}} |  |
| {{binary check 2}} |  |
| {{binary check 3}} |  |

Add a gate-specific checklist item for higher-help follow-up when the gate allows controlled worked examples or reference-solution escalation.

## Gate Decision Rule
- `pass` requires all checklist items to be `yes`
- any `no` means `not pass`
- if the result is a full `pass` and the evaluated artifact is the standard workspace file, copy it to `solution/` before ending the evaluation
- if the result is `not pass`, complete `Recommended Repetition` with a concrete remediation loop before ending the evaluation

## Rubric Snapshot
Use the project rubric scale:
- `0` = missing or incorrect
- `1` = partial, unstable, or mechanical
- `2` = sufficient for the current level
- `3` = stable, correct, and justified

| Dimension | Score (0-3) | Note |
|----------|-------------|------|
| {{dimension 1}} |  |  |
| {{dimension 2}} |  |  |
| {{dimension 3}} |  |  |

## Strengths
- 

## Weakest Dimension(s)
- 

## Recommended Repetition
- Weak dimension to target:
- Required micro-task:
- Assigned resource:
- Reattempt evidence:

## Next Check Question or Test Case
- 

## Resource Reminder
For repetition in `Gate {{N}}: {{Display Name}}`, prefer:
- `{{R-###}}` for {{reason}}

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Tie `not pass` outcomes to the weakest dimension and the smallest corrective task.
- If higher-help mode was used, check the learner's explanation and near-transfer follow-up before treating understanding as stable.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly when the gate requires a specific structure, invariant, or mechanism.
- Use `powershell.exe -ExecutionPolicy Bypass -File .\00_system\save-solution.ps1 -GateDir <gate-path>` for the standard single-file snapshot flow.
- Add gate-specific evaluator notes here when needed.
