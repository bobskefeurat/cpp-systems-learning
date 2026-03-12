# Gate 2 Evaluation Sheet: Values, References, and Parameter Passing (draft v0)

## Purpose
Use this sheet to evaluate `Gate 2: Values, References, and Parameter Passing` with:
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
| Program output clearly showed the value/reference behavior in the expected order |  |
| Program included one by-value function and one by-reference function |  |
| `main` used the same caller variable in both function calls |  |
| Learner explained argument vs parameter in their own words |  |
| Learner explained why the by-value call left the caller unchanged |  |
| Learner explained why the by-reference call changed the caller |  |
| Learner could explain one specific follow-up about changing the parameter-passing setup |  |
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
For repetition in `Gate 2: Values, References, and Parameter Passing`, prefer:
- `R-001` for the main learning path
- `R-004` for conceptual correction when the learner forms bad rules of thumb

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly for function signatures and whether `main` uses the same caller variable in both calls.
- Accept minor wording, capitalization, or spacing differences when the caller-state observations stay clear.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require rerunning the required observation check and fixing the function behavior rather than superficial print text alone.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers that identify the argument, the parameter, and what changes after each call.
- If the weakest dimension is `Debugging/process`, require the learner to point to the failing line or wrong call and explain what it currently proves.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
- Use `powershell.exe -ExecutionPolicy Bypass -File .\00_system\save-solution.ps1 -GateDir 01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing` for the standard snapshot step.
