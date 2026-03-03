# Gate 2 Spec: Values, References, and Parameter Passing (draft v0)

## Purpose
`Gate 2: Values, References, and Parameter Passing` verifies that the learner can:
- write small functions with value and reference parameters
- compile and run the program from the terminal
- explain what changes at the call site and why

This gate is about copying, aliasing, and parameter passing, not advanced reference features.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- function parameters and arguments
- pass by value for `int`
- pass by reference for `int&`
- observable difference between copying and aliasing at the call site

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of one specific parameter-passing follow-up when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify parameter-passing requirements against code, compiler output, runtime output, and learner explanation
- do not treat matching runtime output alone as proof that the same caller variable, correct function signatures, or correct reasoning were used

## Pass Requirements
The learner passes `Gate 2: Values, References, and Parameter Passing` if they can show all of the following:

1. They can compile a small C++ program from the terminal with the baseline command.
2. The program builds with zero warnings under the required flags.
3. The program output matches the task requirements exactly.
4. The program contains:
   - one function with an `int` value parameter
   - one function with an `int&` reference parameter
   - a call from `main` that uses the same caller variable with both functions
5. The learner can explain, in simple terms:
   - what the argument is in each call
   - what the parameter is in each function
   - why the by-value call does not change the caller's variable
   - why the by-reference call does change the caller's variable
   - what `int&` means in this gate
   - why a reference parameter is not the same thing as a pointer parameter
6. The learner can answer one specific follow-up about how the behavior would change if the parameter passing changed.
7. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 2: Values, References, and Parameter Passing` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- warnings are present and ignored
- the output is correct only because it was hardcoded rather than produced by the intended function behavior
- the learner cannot distinguish argument from parameter
- the learner cannot explain why one call changes the caller and the other does not
- the learner treats a reference parameter as if it were the same thing as a pointer parameter
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should stay small.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 2: Values, References, and Parameter Passing` should require the learner to:
- write at least one by-value function
- write at least one by-reference function
- show the different outcomes with the same caller variable
- explain what changed and why

The task should not require:
- pointers
- dynamic allocation
- classes
- containers
- advanced reference categories

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Debugging/process
- Code hygiene and readability

## Common Failure Modes
- uses two by-value functions and hardcodes the expected output
- says the parameter "is the same variable" in the by-value function
- says `int&` means "pointer" instead of alias/reference
- uses two different caller variables and loses the comparison point
- explains the difference only with slogans and not with call-site behavior

## AI Guidance Constraints
For `Gate 2: Values, References, and Parameter Passing`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command and current code before giving stronger hints
- require the learner to point to the argument and parameter in their own code
- require the learner to say what changes in `main` after each call
- prefer Level 1-2 hints first
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main learning path
- `R-004` for conceptual correction when the learner forms bad rules of thumb

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the exact compile command
- ask for the exact compiler output when relevant
- ask what each function is supposed to prove about parameter passing
- ask which line in `main` should still show `5` and which line should show `6`
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 2: Values, References, and Parameter Passing`:
1. Ask for the current code, the exact command/output when relevant, and the learner's own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as one function signature, one function body, or one call-site print.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable
