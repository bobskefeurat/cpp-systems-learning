# Gate 4 Spec: Phase 0 Integration Project (draft v0)

## Purpose
`Gate 4: Phase 0 Integration Project` verifies that the learner can:
- combine the main Phase 0 concepts in one bounded C++ program
- compile and run that program from the terminal with the baseline command
- explain the key warning, storage, parameter-passing, and lifetime decisions in their own words

This gate is about integration and transfer across Phase 0, not about introducing a major new topic.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- terminal compile/run discipline with zero warnings
- standard input and standard output in one report-style program
- one global integer, one local integer, and one dynamic integer with explicit cleanup
- one by-value helper and one by-reference helper with different effects
- the helper calls use the value stored in the dynamic integer while that object is alive
- one small class with constructor/destructor logging plus a visible nested lifetime boundary
- explanation of how the earlier gates are integrated in one bounded task

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- the short concept map from `../learner/TASK.md`
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify integration requirements against code, compiler output, runtime output, and learner explanation
- do not treat matching runtime output alone as proof that the required mechanisms, cleanup, or concept integration are present

## Pass Requirements
The learner passes `Gate 4: Phase 0 Integration Project` if they can show all of the following:

1. They can compile the project from the terminal with the baseline command.
2. The project builds with zero warnings under the required flags.
3. The project handles both required runs exactly as defined in [../learner/TASK.md](../learner/TASK.md).
4. The project contains:
   - one global integer with the value `1`
   - one local integer in `main` that starts from input
   - one dynamically allocated integer with matching `delete`
   - a reset of the pointer to `nullptr` after cleanup
   - helper calls that use the value stored in the dynamic integer before cleanup
   - one helper that takes the current value by value and prints the preview result
   - one helper that takes the current value by reference and updates the caller's variable
   - one small class that prints `enter:` from its constructor and `leave:` from its destructor
   - one outer object labeled `'S'` and one inner object labeled `'C'`
5. The learner can explain, in simple terms:
   - what the compile command is doing at a high level
   - why zero warnings are still required here
   - which variable has static storage duration
   - which value is dynamic and how it is cleaned up
   - why the helper calls must happen before the dynamic integer is deleted
   - why the by-value helper does not change the caller's variable
   - why the by-reference helper does change the caller's variable
   - why the inner object leaves before the outer object
   - why the project shows the basic RAII idea
6. The learner can map Gate 0, Gate 1, Gate 2, and Gate 3 concepts to concrete parts of their own code.
7. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 4: Phase 0 Integration Project` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- warnings are present and ignored
- either required run is incorrect
- the project hardcodes the required output instead of using the intended mechanisms
- the dynamic integer is not cleaned up correctly
- the dynamic integer is present but not actually used as the bonus source in the helper calls
- the preview helper and apply helper do not show the intended by-value vs by-reference difference
- the constructor/destructor lines are not produced by a real class object
- the learner cannot explain where the earlier gate concepts appear in the project
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should be larger than a micro-gate, but still bounded.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 4: Phase 0 Integration Project` should require the learner to:
- read input and print a structured report
- combine static, local, and dynamic storage in one program
- combine one by-value helper and one by-reference helper in one flow
- show one nested lifetime boundary with a small class
- explain how the earlier gates appear in the final code

The task should not require:
- multiple files
- containers
- inheritance or polymorphism
- smart pointers
- major new language features beyond the completed phase

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Debugging/process
- Code hygiene and readability
- Lifetime/ownership/safety

## Common Failure Modes
- gets the required sample output by hardcoding lines instead of using the required mechanisms
- loses the difference between the preview helper and the apply helper
- forgets `delete` or pointer reset in the larger project
- puts both scope objects in the same lifetime and loses the inner boundary
- can explain each earlier gate separately but cannot map them to the current project
- keeps adding extra features and drifts outside Phase 0 scope

## AI Guidance Constraints
For `Gate 4: Phase 0 Integration Project`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command, current code, and current subproblem before giving stronger hints
- require the learner to keep the project bounded to the defined Phase 0 concepts
- require the learner to point to where each earlier gate concept appears in their own code
- prefer Level 1-2 hints first
- use decomposition help to isolate one subsystem at a time
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main refresh path
- `R-003` for exact storage, lifetime, or destructor wording
- `R-004` only if the learner still collapses by-value and by-reference into bad rules of thumb

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the exact compile command
- ask for the exact compiler output when relevant
- ask which subsystem is currently blocked:
  - input/output
  - storage/cleanup
  - preview/apply helpers
  - constructor/destructor behavior
  - final integration order
- ask where Gate 0, Gate 1, Gate 2, and Gate 3 currently appear in the learner's code
- narrow guidance to the blocked subsystem instead of taking over the whole project
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 4: Phase 0 Integration Project`:
1. Ask for the current code, the exact command/output when relevant, the learner's own diagnosis, and the current blocked subsystem.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as the compile command, the by-value helper, the cleanup lines, the class constructor/destructor, or the nested block shape.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable
