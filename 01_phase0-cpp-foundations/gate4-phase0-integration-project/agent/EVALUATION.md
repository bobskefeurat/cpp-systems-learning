# Gate 4 Evaluation Sheet: Phase 0 Integration Project (draft v0)

## Purpose
Use this sheet to evaluate `Gate 4: Phase 0 Integration Project` with:
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
| Project built successfully |  |
| Project built with zero warnings |  |
| Required Run 1 matched exactly |  |
| Required Run 2 matched exactly |  |
| Code includes one global integer with the value `1` |  |
| Code includes one dynamic integer with matching `delete` and pointer reset to `nullptr` |  |
| Code uses the value stored in the dynamic integer in the helper calls before cleanup |  |
| Code includes one by-value preview helper and one by-reference apply helper |  |
| Code includes one real class whose constructor prints `enter:` and destructor prints `leave:` |  |
| Code includes one outer object labeled `'S'` and one inner object labeled `'C'` in a nested block |  |
| Learner explained the compile command and warning requirement in their own words |  |
| Learner explained static vs dynamic storage and cleanup in their own words |  |
| Learner explained why the helper calls must happen before the dynamic integer is deleted |  |
| Learner explained the by-value vs by-reference difference in their own words |  |
| Learner explained why the inner object leaves before the outer object |  |
| Learner mapped Gate 0, Gate 1, Gate 2, and Gate 3 concepts to their own code |  |
| If higher-help mode was used, learner explained the fix and completed the follow-up variant/check |  |

## Gate Decision Rule
- `pass` requires all checklist items to be `yes`
- any `no` means `not pass`
- if the result is a full `pass` and the evaluated artifact is `workspace/main.cpp`, copy it to `solution/main.cpp` before ending the evaluation
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
| Debugging/process |  |  |
| Code hygiene and readability |  |  |
| Lifetime/ownership/safety |  |  |

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
For repetition in `Gate 4: Phase 0 Integration Project`, prefer:
- `R-001` for the main refresh path
- `R-003` for exact storage, lifetime, or destructor wording
- `R-004` only if the value/reference reasoning is still unstable

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the project "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly for the by-value helper, by-reference helper, dynamic bonus usage, dynamic cleanup, constructor/destructor behavior, and nested block.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require rerunning the failing required run and fixing the underlying mechanism rather than the print text only.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers that explain compile command, storage categories, why the helpers use the dynamic value before cleanup, helper behavior, and destructor timing in the learner's own words.
- If the weakest dimension is `Debugging/process`, require the learner to name the blocked subsystem and show one smaller test they used to isolate it.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If the weakest dimension is `Lifetime/ownership/safety`, require the learner to point to the `delete`, pointer reset, and the line where the inner object's lifetime ends.
- If the project is close to pass but one subsystem is still broken, remediate that subsystem instead of restarting the whole integration gate.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
- Use `powershell.exe -ExecutionPolicy Bypass -File .\00_system\save-solution.ps1 -GateDir 01_phase0-cpp-foundations/gate4-phase0-integration-project` for the standard snapshot step.
