# Gate 0 Evaluation Sheet: Compile, Run, and Basic I/O (draft v0)

## Purpose
Use this sheet to evaluate `Gate 0: Compile, Run, and Basic I/O` with:
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
| Program read two integers correctly |  |
| Program printed the correct sum |  |
| Program output clearly reported the required sum |  |
| Learner explained `g++`, `main.cpp`, and `-o main` in their own words |  |
| Learner could distinguish compile time from run time |  |
| Learner could use at least one compiler message to correct a mistake |  |
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
For repetition in `Gate 0: Compile, Run, and Basic I/O`, prefer:
- `R-001` for the main learning path
- `R-002` for exact GCC flag meaning

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Use compile command, compiler output, runtime output, and learner explanation together for this gate.
- Accept minor capitalization or equivalent result labels when the computed sum and I/O flow are clear.
- If the submission artifacts do not already show a compiler diagnostic, ask the learner to explain a simple compiler message or warning as a short follow-up.
- If the learner passes mechanically but cannot explain the compile-and-run flow, the result should remain `not pass`.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require rerunning at least two task test cases and correcting the reported sum or unclear output shape.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers to the relevant check questions in the learner's own words.
- If the weakest dimension is `Debugging/process`, require the learner to point to the failing command or line and explain what the feedback means.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
- Use `powershell.exe -ExecutionPolicy Bypass -File .\00_system\save-solution.ps1 -GateDir 01_phase0-cpp-foundations/gate0-compile-run-basic-io` for the standard snapshot step.
