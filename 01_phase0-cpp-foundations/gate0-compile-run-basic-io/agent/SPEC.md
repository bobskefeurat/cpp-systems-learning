# Gate 0 Spec: Compile, Run, and Basic I/O (draft v0)

## Purpose
`Gate 0: Compile, Run, and Basic I/O` verifies that the learner can:
- write and edit a very small C++ program
- compile it from the terminal
- read basic compiler diagnostics
- handle warnings instead of ignoring them
- use basic standard I/O

This gate is about execution basics, not cleverness.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- Basic syntax
- Compilation
- Warnings
- Basic output with `std::cout`
- Basic input with `std::cin`
- Running the produced executable

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of one compiler message or warning when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify the compile/run flow against the compile command, compiler output, runtime output, and learner explanation
- do not treat matching output alone as proof that the learner understands the compile command or warning requirements

## Pass Requirements
The learner passes `Gate 0: Compile, Run, and Basic I/O` if they can show all of the following:

1. They can compile a small C++ program from the terminal with the baseline command.
2. The program builds with zero warnings under the required flags.
3. The program performs simple console I/O correctly.
4. The learner can explain, in simple terms:
   - what `g++` does
   - what `main.cpp` is
   - what `-o main` does
   - why warnings must be handled
5. The learner can read at least a basic compiler message and use it to correct a mistake.
6. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 0: Compile, Run, and Basic I/O` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- the code only works through IDE magic or an unexplained button click
- warnings are present and ignored
- input/output behavior is incorrect or only partially understood
- the learner cannot explain the basic compile command in their own words
- the learner needs answer-key-level help to complete the task
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should stay small.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 0: Compile, Run, and Basic I/O` should require the learner to:
- print text to the console
- read one or two simple values from input
- print a result back to the console
- compile and run the program manually

The task should not require:
- multiple files
- classes
- pointers
- dynamic allocation
- containers
- advanced control flow

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Debugging/process
- Code hygiene and readability

`Lifetime/ownership/safety` is not the main dimension here unless the learner introduces unnecessary unsafe behavior.

## Common Failure Modes
- cannot find or run `g++`
- uses the wrong working directory
- does not understand what file is being compiled
- ignores warnings because the program "still runs"
- mixes up compile time and run time
- uses `std::cout` or `std::cin` mechanically without understanding the data flow

## AI Guidance Constraints
For `Gate 0: Compile, Run, and Basic I/O`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command and compiler output before giving stronger hints
- prefer Level 1-2 hints first
- require the learner to explain the error message in their own words
- treat warnings as part of the task, not as optional cleanup
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main learning path
- `R-002` for exact GCC flag meaning

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the exact compile command
- ask for the exact compiler output
- ask what the learner thinks the error means
- verify that readiness was already sufficient before giving solution guidance
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 0: Compile, Run, and Basic I/O`:
1. Ask for the exact command, compiler output, and the learner's own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as the compile command, `main` skeleton, variable setup, or output shape.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable

## Open Decisions Still Marked as Provisional
- Whether `-Werror` should be required in `Gate 0: Compile, Run, and Basic I/O`
- The exact diagnostic questions used during pass/fail evaluation
