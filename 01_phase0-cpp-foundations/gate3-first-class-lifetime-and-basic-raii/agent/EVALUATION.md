# Gate 3 Evaluation Sheet: First Class, Lifetime, and Basic RAII (draft v0)

## Purpose
Use this sheet to evaluate `Gate 3: First Class, Lifetime, and Basic RAII` with:
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
| Program defined `ScopeMarker` as a real class with one `char` member |  |
| Program exposed the tag through a public `tag()` member function that `observe` used |  |
| Program used a constructor for the `construct:` lines and a destructor for the `destroy:` lines |  |
| Program used an `observe` helper function with a `ScopeMarker&` parameter |  |
| Program created one outer object in `main` and one inner object inside a nested block |  |
| Learner explained why the inner object is destroyed before `after inner block` |  |
| Learner explained how `observe` gets access to the tag |  |
| Learner explained why tying cleanup to destruction is the basic RAII idea in this gate |  |
| Learner could answer one specific follow-up about changed scope or resource-cleanup timing |  |
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
For repetition in `Gate 3: First Class, Lifetime, and Basic RAII`, prefer:
- `R-001` for the main learning path
- `R-003` for exact lifetime or destructor wording

## Notes for the Evaluator
- Do not let rubric scores override the binary gate result.
- Do not ignore warnings because the program "works".
- Prefer concrete notes over general praise.
- Verify each pass requirement against the relevant evidence source instead of inferring `pass` from runtime output alone.
- Inspect code directly for the real class definition, `tag()` member function, constructor, destructor, reference parameter, and nested block.
- If the weakest dimension is `Compilation and warnings`, require a rebuild with the baseline command plus a short explanation of each flag used.
- If the weakest dimension is `Correctness against requirements`, require rerunning the exact output check and replacing hardcoded lifetime messages with the intended class behavior.
- If the weakest dimension is `Conceptual understanding and explanation`, require rewritten answers that name when each object is created, when it is destroyed, how `observe` gets the tag, and why the helper call does not change that.
- If the weakest dimension is `Lifetime/ownership/safety`, require the learner to mark the lifetime boundary for each object and explain what cleanup would mean for a simple file-like resource.
- If the weakest dimension is `Code hygiene and readability`, require a focused cleanup pass and a short justification of the changes.
- If higher-help mode was used, check the learner's explanation and follow-up variant before treating understanding as stable.
