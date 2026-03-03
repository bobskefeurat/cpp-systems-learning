# Gate 1 Evaluation Sheet: Stack, Heap, and Storage Basics (draft v0)

## Purpose
Use this sheet to evaluate `Gate 1: Stack, Heap, and Storage Basics` with:
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
| Learner compiled from the terminal using the baseline command |  |
| Program built successfully |  |
| Program built with zero warnings |  |
| Program output matched the task requirements exactly |  |
| Program included one global integer, one local integer, one dynamic integer, and one block-local integer |  |
| Dynamically allocated integer was cleaned up with a matching `delete`, and the local pointer variable was reset to `nullptr` |  |
| Learner explained static, automatic, and dynamic storage in their own words |  |
| Learner distinguished the local pointer variable from the dynamic integer it points to |  |
| Learner could explain either missing `delete` or using the dynamic integer after `delete` as a specific mistake |  |
| If higher-help mode was used, learner explained the fix and completed the follow-up variant/check |  |

## Gate Decision Rule
- `pass` requires all checklist items to be `yes`
- any `no` means `not pass`
- if the result is `not pass`, complete `Recommended Repetition` with a concrete remediation loop before ending the evaluation

## Rubric Snapshot
Use the project rubric scale:
- `0` = missing or incorrect
- `1` = partial, unstable, or mechanical
- `2` = sufficient for the current level
- `3` = stable, correct, and justified

| Dimension | Score (0-3) | Note |
|----------|-------------|------|
| Compilation and warnings |  |  |
| Correctness against requirements |  |  |
| Conceptual understanding and explanation |  |  |
| Lifetime/ownership/safety |  |  |
| Code hygiene and readability |  |  |

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
For repetition in `Gate 1: Stack, Heap, and Storage Basics`, prefer:
- `R-001` for the main learning path
- `R-003` for exact storage-duration or lifetime wording

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly for cleanup, pointer reset, and the required object categories in this gate.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require rerunning the exact output check and fixing the printed labels or values.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers to the storage and lifetime questions in the learner's own words.
- If the weakest dimension is `Lifetime/ownership/safety`, require the learner to label each object as static, automatic, or dynamic, explain what changes at `delete`, and fix any missing cleanup or pointer reset.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
