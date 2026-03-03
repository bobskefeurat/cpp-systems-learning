# Gate 3 Spec: First Class, Lifetime, and Basic RAII (draft v0)

## Purpose
`Gate 3: First Class, Lifetime, and Basic RAII` verifies that the learner can:
- define a tiny class with a constructor and destructor
- compile and run the program from the terminal
- explain simple object lifetime and deterministic cleanup in their own words

This gate is about first class-based lifetime reasoning and a basic RAII mental model, not advanced object design.

## Current Baseline
- OS path: Windows
- Compiler baseline: `g++` from `MSYS2 UCRT64`
- Scope: single-file programs only in `workspace/`
- Language standard: `-std=c++20`
- Required warning flags: `-Wall -Wextra -Wpedantic`
- Baseline compile command: use the command defined in [../learner/TASK.md](../learner/TASK.md)

## What This Gate Covers
- one small class with one data member
- one small public member function used to observe that data safely
- constructor and destructor behavior tied to object lifetime
- one helper function that observes an object through a reference parameter
- visible scope-exit cleanup through a nested block

## Required Evidence
The learner-facing evidence list lives in [../learner/TASK.md](../learner/TASK.md).

For evaluation, verify that the learner has provided:
- the required artifacts listed in `../learner/TASK.md`
- answers to the check questions in `../learner/TASK.md`
- a short explanation of one specific lifetime or RAII follow-up when needed
- higher-help follow-up evidence when the learner used a controlled worked example or a reference solution

For pass/fail evaluation:
- verify lifetime and RAII requirements against code, compiler output, runtime output, and learner explanation
- do not treat matching runtime output alone as proof that the program used a real class, constructor, destructor, reference parameter, or correct lifetime reasoning

## Pass Requirements
The learner passes `Gate 3: First Class, Lifetime, and Basic RAII` if they can show all of the following:

1. They can compile a small C++ program from the terminal with the baseline command.
2. The program builds with zero warnings under the required flags.
3. The program output matches the task requirements exactly.
4. The program contains:
   - one class named `ScopeMarker`
   - one `char` member used to identify each object
   - one public `tag()` member function used by `observe`
   - one constructor that produces the `construct:` lines
   - one destructor that produces the `destroy:` lines
   - one helper function that takes a `ScopeMarker&`
   - one object in `main` and one object inside a nested block
5. The learner can explain, in simple terms:
   - what the constructor is doing in this program
   - what the destructor is doing in this program
   - why the inner object is destroyed at block exit
   - why the outer object lasts until the end of `main`
   - how `observe` reads the tag through the class interface
   - why calling `observe` does not decide the object's lifetime
   - why tying cleanup to destruction is the basic RAII idea in this gate
6. The learner can answer one specific follow-up about how the cleanup timing would change if the scope or resource example changed.
7. If higher-help mode was used, the learner can explain what changed and complete the follow-up variant or check.

## Not Pass Conditions
`Gate 3: First Class, Lifetime, and Basic RAII` is `not pass` if any of the following is true:
- the learner cannot compile from the terminal
- warnings are present and ignored
- the output is correct only because the learner hardcoded the full sequence rather than using the required class behavior
- the program does not actually use a class with a constructor and destructor
- the helper function does not read the tag through the required `tag()` member function
- the helper function does not use the required reference parameter
- the learner cannot explain when each object is destroyed
- the learner treats cleanup timing as if it were unrelated to object lifetime
- after higher-help support, the learner still cannot explain the fix or complete the follow-up variant/check

## Suggested Task Shape
The task should stay small.

Current task files:
- preparation: `../learner/PREP.md`
- readiness check: `./READINESS.md`
- task: `../learner/TASK.md`
- evaluation sheet: `./EVALUATION.md`

A valid task for `Gate 3: First Class, Lifetime, and Basic RAII` should require the learner to:
- define one very small class
- expose one small piece of object state through a minimal class interface
- show object creation and destruction through observable output
- use a nested block to make one lifetime boundary visible
- explain why cleanup happens automatically at scope exit

The task should not require:
- dynamic allocation
- containers
- copy constructors, move constructors, or move assignment
- inheritance or polymorphism
- smart pointers

## Diagnostic Focus for the Rubric
Relevant rubric dimensions for this gate:
- Compilation and warnings
- Correctness against requirements
- Conceptual understanding and explanation
- Lifetime/ownership/safety
- Code hygiene and readability

## Common Failure Modes
- prints the expected lines from `main` instead of using the constructor and destructor
- puts both objects in the same scope and therefore misses the inner lifetime boundary
- says the helper function call decides when the object is destroyed
- says destruction happens "later" without naming the actual scope boundary
- talks about RAII only as a slogan and cannot tie it to the current class

## AI Guidance Constraints
For `Gate 3: First Class, Lifetime, and Basic RAII`, the AI should:
- ensure the preparation + readiness step is completed before solution guidance begins
- ask for the exact compile command and current code before giving stronger hints
- require the learner to point to the class, constructor, destructor, helper function, and nested block in their own code
- require the learner to point to the `tag()` member function and explain why `observe` uses it
- require the learner to say which line ends the inner object's lifetime
- prefer Level 1-2 hints first
- keep controlled worked examples gated behind concrete effort instead of using them as the default response

The AI may refer to:
- `R-001` for the main learning path
- `R-003` for precise lifetime or destructor wording

## AI Use During The Task
When the learner gets stuck during the task, the AI should:
- ask for the exact compile command
- ask for the exact compiler output when relevant
- ask which line is supposed to trigger each constructor or destructor message
- ask how `observe` gets the tag from the object in the current code
- ask where the inner object's lifetime ends in the current code
- ask what the learner thinks RAII means in this tiny class
- stay within the hint policy and avoid writing a full solution by default

Use this escalation order for `Gate 3: First Class, Lifetime, and Basic RAII`:
1. Ask for the current code, the exact command/output when relevant, and the learner's own diagnosis.
2. Prefer Level 1-2 hints first.
3. Use Level 3 only after the learner has made an honest attempt on the same blocker.
4. Use a controlled worked example or completion skeleton only after either two honest attempts on the same blocker or clear diagnostic effort with no progress.
5. Keep the controlled worked example narrow: only the blocked part, such as the class definition, the `tag()` member function, the constructor/destructor body, the helper function signature, or the nested block shape.
6. Use a full reference solution only on explicit request.

After Level 4 or Level 5 help, require:
- the learner's own explanation of what changed and why it works
- one small follow-up variant or focused check before the gate is treated as stable
