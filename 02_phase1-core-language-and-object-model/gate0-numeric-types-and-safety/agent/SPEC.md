# Gate 0 Spec: Numeric Types and Safety (draft v0)

## Purpose
`Gate 0: Numeric Types and Safety` verifies that the learner can:
- reason about mixed numeric types in a small program
- use brace initialization as a narrowing guardrail
- explain unsigned arithmetic behavior and first-pass floating-point comparison strategy

This gate is about predictable numeric behavior and safer numeric defaults, not math-heavy algorithms.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- unsigned arithmetic reasoning in one bounded underflow example
- brace initialization and narrowing-avoidance as a local safety rule
- mixed `int` and `double` arithmetic
- exact versus tolerance-based floating-point comparison

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of one numeric-safety follow-up when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify the numeric-safety requirements against code, compiler output, runtime output, and learner explanation
- do not treat matching runtime output alone as proof that the intended conversion, comparison, or brace-initialization mechanisms are present

## Pass Requirements
The learner passes `Gate 0: Numeric Types and Safety` if they can show all of the following:

1. They can compile a small C++ program from the terminal with the baseline command.
2. The program builds with zero warnings under the required flags.
3. The program output matches the task requirements exactly.
4. The program contains:
   - explicit numeric variable declarations with brace initialization for the required task variables
   - `safeTotal` computed from the required mixed `int` and `double` expression
   - `wrappedRemaining` computed from the required unsigned subtraction
   - `underflowLooksLarge` computed from the wrapped unsigned result
   - one exact floating-point equality check and one tolerance-based floating-point comparison
   - `std::boolalpha` before the boolean results are printed
5. The learner can explain, in simple terms:
   - what narrowing means in this gate
   - why brace initialization is required here
   - why the mixed arithmetic result is a `double`
   - why the unsigned subtraction does not produce `-1`
   - why the wrapped result makes `underflowLooksLarge` print `true`
   - why exact floating-point equality is fragile here
   - what the tolerance check is doing
6. The learner can answer one specific follow-up about unsigned defaults, overflow risk, or narrowing risk.
7. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 0: Numeric Types and Safety` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- warnings are present and ignored
- the output is hardcoded instead of being produced by the required expressions and comparisons
- `auto`, explicit casts, or other code choices hide the intended numeric reasoning
- the program does not actually use the required unsigned-underflow example or tolerance-based floating-point check
- the learner cannot explain brace initialization, the mixed arithmetic result, or the floating-point comparison behavior
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should stay small and report-like.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 0: Numeric Types and Safety` should require the learner to:
- compute one mixed `int` and `double` expression
- make one unsigned arithmetic pitfall visible in runtime output
- compare one floating-point result both exactly and with a tolerance
- explain why brace initialization and comparison strategy matter

The task should not require:
- containers
- templates
- complex math libraries
- bitwise or extended-integer corner cases
- implementation-rank edge cases beyond the bounded unsigned example in the task

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Code hygiene and readability

## Common Failure Modes
- assumes unsigned is automatically safer for any non-negative quantity
- expects unsigned subtraction to become a negative number
- thinks `0.1 + 0.2 == 0.3` should always be true in C++
- uses brace initialization mechanically but cannot explain narrowing
- hides the intended behavior with casts, `auto`, or hardcoded booleans

## AI Guidance Constraints
For `Gate 0: Numeric Types and Safety`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command and current code before giving stronger hints
- require the learner to point to the brace-initialized variables, the mixed arithmetic line, the unsigned subtraction, the exact floating-point comparison, and the tolerance-based comparison in their own code
- require the learner to explain the current boolean results in their own words before stronger hints
- prefer Level 1-2 hints first
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main learning path
- `R-003` for precise conversion wording

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the current code, the exact command/output when relevant, and the learner's own diagnosis
- ask which line is supposed to produce each report value or boolean result
- ask what the learner expects `stock - sold` and `computed == expected` to do before giving a stronger hint
- ask why brace initialization was used for the numeric variables in the current code
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 0: Numeric Types and Safety`:
1. Ask for the current code, the exact command/output when relevant, and the learner's own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as the brace-initialized declarations, the mixed arithmetic expression, the unsigned subtraction, or the floating-point comparison logic.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable
