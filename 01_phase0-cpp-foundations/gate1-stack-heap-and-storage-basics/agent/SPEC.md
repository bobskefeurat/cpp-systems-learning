# Gate 1 Spec: Stack, Heap, and Storage Basics (draft v0)

## Purpose
`Gate 1: Stack, Heap, and Storage Basics` verifies that the learner can:
- build a tiny program that includes static, automatic, and dynamic storage examples
- compile and run it from the terminal
- explain simple lifetime boundaries and required cleanup in their own words

This gate is about first storage and lifetime reasoning, not advanced pointer technique.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- one global variable as a static-storage example
- local and block-local variables as automatic-storage examples
- one dynamically allocated integer with `new` and `delete`
- simple printed evidence that the live objects can be read correctly

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of either missing `delete` or using the dynamic integer after `delete` when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify storage and cleanup requirements against code, compiler output, runtime output, and learner explanation
- do not treat matching runtime output alone as proof that the required cleanup and storage distinctions are correct

## Pass Requirements
The learner passes `Gate 1: Stack, Heap, and Storage Basics` if they can show all of the following:

1. They can compile a small C++ program from the terminal with the baseline command.
2. The program builds with zero warnings under the required flags.
3. The program output matches the task requirements exactly.
4. The program contains:
   - one global integer
   - one local integer in `main`
   - one dynamically allocated integer with matching `delete`
   - a reset of the local pointer variable to `nullptr` after cleanup
   - one block-local integer inside a nested block
5. The learner can explain, in simple terms:
   - which object has static storage duration
   - which objects have automatic storage duration
   - which object has dynamic storage duration
   - why the local pointer variable is not the same object as the dynamic integer
   - why `delete` is required in this task
   - why the pointer variable can still be assigned `nullptr` after `delete`
6. The learner can identify one specific mistake in this program shape:
   - removing `delete`
   - or reading the dynamic integer after `delete`
7. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 1: Stack, Heap, and Storage Basics` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- warnings are present and ignored
- the dynamic integer is not cleaned up correctly
- the local pointer variable is not reset as required by the task
- the output is incorrect or only partially understood
- the learner confuses the local pointer variable with the dynamic integer it points to
- the learner explains stack vs heap only through slogans and cannot map the objects to storage categories
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should stay small.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 1: Stack, Heap, and Storage Basics` should require the learner to:
- create at least one static-storage example
- create at least one automatic-storage example
- create one dynamic-storage example and clean it up
- explain which objects stay alive at which points

The task should not require:
- custom functions
- classes
- containers
- pointer arithmetic
- advanced ownership abstractions

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Lifetime/ownership/safety
- Code hygiene and readability

## Common Failure Modes
- forgets that the global object is the static-storage example
- treats the local pointer variable as if it were the dynamic integer itself
- forgets `delete`, or treats `delete` as if it destroys the pointer variable itself
- avoids the nested block and therefore does not show block-local lifetime
- repeats myths like "heap means slow" without explaining object lifetime

## AI Guidance Constraints
For `Gate 1: Stack, Heap, and Storage Basics`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command and current code before giving stronger hints
- require the learner to name which object is static, automatic, and dynamic
- require the learner to say what changes at `delete` and what still exists after that line
- prefer Level 1-2 hints first
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main learning path
- `R-003` for precise storage-duration or lifetime wording

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the exact compile command
- ask for the exact compiler output when relevant
- ask what each named object in the code is supposed to represent
- ask what the learner thinks `new` or `delete` is doing in their current attempt
- ask what still exists after the cleanup line
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 1: Stack, Heap, and Storage Basics`:
1. Ask for the current code, the exact command/output when relevant, and the learner's own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as the global declaration, the dynamic allocation line, the nested block shape, or the cleanup line.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable
