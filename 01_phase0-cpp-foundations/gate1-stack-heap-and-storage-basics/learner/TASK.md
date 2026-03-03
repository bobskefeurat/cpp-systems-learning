# Task: Storage Snapshot

## Goal
Write a small C++ program that:
- creates objects with different storage durations
- prints labeled values from the objects while they are alive
- cleans up one dynamically allocated integer before the program ends

This is the current exercise for `Gate 1: Stack, Heap, and Storage Basics` in `Phase 0: C++ Foundations`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Write a program in `workspace/main.cpp` that does all of the following:

- define one global integer with the value `100`
- inside `main`, define one local integer with the value `20`
- inside `main`, dynamically allocate one integer with the value `30`
- inside a nested block, define one block-local integer with the value `40`
- print exactly:

```text
global: 100
local: 20
heap: 30
block: 40
after block: global=100 local=20 heap=30
```

The dynamic integer should be accessed through its pointer and cleaned up before `main` returns.
After `delete`, set the local pointer variable to `nullptr` to make it explicit that the pointer variable still exists even though the dynamic integer does not.

## Constraints
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 1: Stack, Heap, and Storage Basics`
- The program must build with zero warnings
- Use standard output only
- Use `new` and `delete` for the dynamic integer in this gate

Do not introduce:
- custom functions
- classes
- references
- containers
- pointer arithmetic

## Build And Run
Run these commands from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

### Check 1: Exact Output
Expected output:

```text
global: 100
local: 20
heap: 30
block: 40
after block: global=100 local=20 heap=30
```

### Check 2: Storage Audit
Confirm all of the following in your code:
- there is one global integer
- there is one local integer in `main`
- there is one dynamically allocated integer and one matching `delete`
- after `delete`, the local pointer variable is set to `nullptr`
- the block-local integer is used only inside the nested block

### Check 3: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the output text is wrong, the cleanup is missing, the pointer variable is not reset after cleanup, or you still cannot explain which object belongs to which storage category.

## Be Ready To Explain
Be ready to answer these in your own words:

1. Which object in this program has static storage duration?
2. Which objects have automatic storage duration?
3. Which object has dynamic storage duration?
4. What is the difference between the local pointer variable and the dynamically allocated integer it points to?
5. What would be wrong if the `delete` line were removed?
6. Why can the pointer variable still be assigned `nullptr` after `delete`?
7. Why can the block-local integer not be used after the nested block ends?

Also be ready to explain one specific follow-up:
- why omitting `delete` would leak the dynamic integer
- or why using `*heapPtr` after `delete` would be a lifetime mistake

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
