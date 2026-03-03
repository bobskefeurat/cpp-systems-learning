# Task: Session Report

## Goal
Write a larger but still bounded C++ program that:
- reads two integers from standard input
- combines the main Phase 0 concepts in one console program
- shows preview vs apply behavior, scope-based lifetime, and explicit cleanup in one report

This is the current exercise for `Gate 4: Phase 0 Integration Project` in `Phase 0: C++ Foundations`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

Context for this task:
You are writing a tiny internal console tool for a team that tracks one session value and a bonus adjustment.
They want to preview the change before applying it, and they also want a simple scope log so they can see when a temporary processing step begins and ends.

This context is only the framing.
The exact technical requirements below are the source of truth for evaluation.

## Task
Write a program in `workspace/main.cpp` that does all of the following:

- define one global integer with the value `1`
- read two integers from standard input:
  - the starting value
  - the bonus value
- keep the starting value in one local integer inside `main`
- dynamically allocate one integer that stores the bonus value
- define one small class of your choice that:
  - stores one `char` label
  - prints `enter: <label>` from its constructor
  - prints `leave: <label>` from its destructor
- define one helper function that takes the starting value by value plus the bonus amount, computes the preview result, and prints `preview: <value>`
- define one helper function that takes the starting value by reference plus the bonus amount, and updates the caller's variable
- in `main`, create one outer object of the class with the label `'S'`
- print `global: <value of the global integer>`
- print `start: <current starting value>`
- print `heap bonus: <value stored in the dynamic integer>`
- create a nested block and, inside it:
  - create one inner object of the class with the label `'C'`
  - call the by-value helper using the current starting value and the value stored in the dynamic integer
  - print `after preview: <current starting value>`
  - call the by-reference helper using the current starting value and the value stored in the dynamic integer
  - print `after apply: <current starting value>`
- after the nested block ends:
  - clean up the dynamic integer with `delete`
  - set the pointer to `nullptr`
  - print `cleanup: ok`

You may choose your own names for the class, helper functions, and local variables.
The required behaviors and output lines below are not optional.

### Required Run 1
Input:

```text
10 3
```

Output:

```text
enter: S
global: 1
start: 10
heap bonus: 3
enter: C
preview: 13
after preview: 10
after apply: 13
leave: C
cleanup: ok
leave: S
```

### Required Run 2
Input:

```text
7 -2
```

Output:

```text
enter: S
global: 1
start: 7
heap bonus: -2
enter: C
preview: 5
after preview: 7
after apply: 5
leave: C
cleanup: ok
leave: S
```

The `enter:` and `leave:` lines must come from the constructor and destructor.
The `preview:` line must come from the by-value helper.
The change from `after preview:` to `after apply:` must come from the by-reference helper, not from hardcoded output only.

## Constraints
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 4: Phase 0 Integration Project`
- The program must build with zero warnings
- Use standard I/O only
- Keep the whole project inside Phase 0 concepts

Do not introduce:
- multiple source files
- containers
- inheritance or polymorphism
- smart pointers
- copy-control or move-semantics features
- hardcoded output that bypasses the required mechanisms

## Build And Run
Run these commands from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

### Check 1: Required Run 1
Use the exact input/output pair listed in `Required Run 1`.

### Check 2: Required Run 2
Use the exact input/output pair listed in `Required Run 2`.

### Check 3: Integration Audit
Confirm all of the following in your code:
- there is one global integer with the value `1`
- there is one local integer in `main` that starts from input
- there is one dynamically allocated integer with a matching `delete`
- after `delete`, the pointer is reset to `nullptr`
- the helper calls use the value stored in the dynamic integer while it is still alive
- there is one by-value helper and one by-reference helper
- there is one small class whose constructor prints `enter:` and destructor prints `leave:`
- there is one outer object with label `'S'` and one inner object with label `'C'`
- the inner object lives only inside the nested block

### Check 4: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the program only works for one hardcoded input pair, if the cleanup is missing, if the by-value and by-reference behavior collapse into the same effect, or if you cannot point to where each earlier gate concept appears in your code.

## Be Ready To Explain
Be ready to answer these in your own words:

1. What does your compile command do at a high level in this project?
2. Why must this project still build with zero warnings?
3. Which variable in your program has static storage duration?
4. Which value is dynamically allocated, and how is it cleaned up safely?
5. Why must the helper calls happen before the dynamic integer is deleted?
6. Which helper shows pass by value, and why does it not change the caller's variable?
7. Which helper shows pass by reference, and why does it change the caller's variable?
8. Why does the inner object leave before the outer object?
9. How does this project show the basic RAII idea from Phase 0?
10. Where in your code can you point to Gate 0, Gate 1, Gate 2, and Gate 3 concepts?

Also be ready to explain one specific follow-up:
- what would change if the preview helper also took the starting value by reference
- or what would go wrong if the dynamic integer were not deleted before the end of `main`

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from both required runs
- short written answers to the check questions
- a short concept map that points to where Gate 0, Gate 1, Gate 2, and Gate 3 show up in your code
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
