# Gate 0 Evaluation Sheet: Numeric Types and Safety (draft v0)

## Purpose
Use this sheet to evaluate `Gate 0: Numeric Types and Safety` with:
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
| Program used explicit numeric variable declarations with brace initialization for the required task values |  |
| Program computed `safeTotal` from the required mixed `int` and `double` expression |  |
| Program computed `wrappedRemaining` from the required unsigned subtraction |  |
| Program computed `underflowLooksLarge` from the wrapped unsigned result |  |
| Program included both the exact and tolerance-based floating-point comparisons |  |
| Program used `std::boolalpha` for the boolean output |  |
| Learner explained what narrowing means and why brace initialization is required here |  |
| Learner explained why the unsigned subtraction does not produce `-1` and why the wrapped result still prints as large |  |
| Learner explained why exact floating-point equality is fragile here and what the tolerance check does |  |
| Learner could answer one specific follow-up about unsigned defaults, overflow risk, or narrowing risk |  |
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
For repetition in `Gate 0: Numeric Types and Safety`, prefer:
- `R-001` for the main numeric-safety reading path
- `R-003` for exact arithmetic-conversion or implicit-conversion wording

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly for brace initialization, explicit type spelling, the mixed arithmetic expression, the unsigned subtraction, and the two floating-point comparison forms.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require replacing any hardcoded output or missing mechanism with the intended expressions and comparisons.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers that explain narrowing, the mixed arithmetic result type, the unsigned-underflow result, and why exact floating-point equality is fragile here.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If the learner solved the output but used casts or `auto` to hide the intended type reasoning, treat that as `not pass` until the required mechanism is visible.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
