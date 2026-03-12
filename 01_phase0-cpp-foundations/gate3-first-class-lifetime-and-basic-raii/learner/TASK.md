# Task: Lifetime Log

## Goal
Write a small C++ program that:
- defines one tiny class with a constructor and destructor
- shows, through observable output and order, when two objects begin and end their lifetime
- demonstrates the basic RAII idea that cleanup happens automatically at scope exit

This is the current exercise for `Gate 3: First Class, Lifetime, and Basic RAII` in `Phase 0: C++ Foundations`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Write a program in `workspace/main.cpp` that does all of the following:

- define a class named `ScopeMarker`
- give the class one `char` member that stores a tag for the object
- add a small public member function named `tag()` that returns that stored tag
- add a constructor that stores the tag and prints a clear construction line such as `construct: <tag>`
- add a destructor that prints a clear destruction line such as `destroy: <tag>`
- define a helper function named `observe` that takes a `ScopeMarker&` and prints a clear observation line such as `observe: <tag>` by calling `tag()`
- in `main`, create one `ScopeMarker` object with the tag `'A'`
- call `observe` for that object
- print `before inner block`
- create a nested block and, inside it, create one `ScopeMarker` object with the tag `'B'`
- call `observe` for the inner object
- print `leaving inner block`
- after the block ends, print `after inner block`
- make the overall output show this event sequence. The sample wording below is recommended and acceptable:

```text
construct: A
observe: A
before inner block
construct: B
observe: B
leaving inner block
destroy: B
after inner block
destroy: A
```

The construction lines must come from the constructor, and the destruction lines must come from the destructor.
Minor wording differences are acceptable if the construction, observation, and destruction events remain clear and in the same order.

## Constraints
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 3: First Class, Lifetime, and Basic RAII`
- The program must build with zero warnings
- Use standard output only
- Use a real `class`, not a `struct`
- Use the `observe` helper function with a reference parameter

Do not introduce:
- dynamic allocation
- containers
- inheritance
- copy-control or move-semantics features
- hardcoded constructor/destructor output from `main` alone

## Build And Run
Run these commands from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

### Check 1: Required Event Sequence
Your wording may vary slightly, but the same construction, observation, and destruction events must stay clear in the same order.

One acceptable output:

```text
construct: A
observe: A
before inner block
construct: B
observe: B
leaving inner block
destroy: B
after inner block
destroy: A
```

### Check 2: Code Shape
Confirm all of the following in your code:
- there is one class named `ScopeMarker`
- the class has a constructor and a destructor
- the class has a public `tag()` member function that `observe` uses
- `observe` takes a `ScopeMarker&`
- `main` creates one outer object and one inner-block object
- the constructor and destructor are responsible for the construction and destruction lines

### Check 3: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the output is right only because of print statements in `main`, if the event order is unclear, or if you still cannot point to the line where each object's lifetime ends.

## Be Ready To Explain
Be ready to answer these in your own words:

1. What does the constructor do in this program?
2. What does the destructor do in this program?
3. Why is the inner object destroyed before `after inner block` is printed?
4. Why is the outer object destroyed last?
5. Why is tying cleanup to the destructor the basic RAII idea in this gate?
6. Why does calling `observe` not decide when the object is destroyed?
7. How does `observe` get access to the tag it prints?

Also be ready to explain one specific follow-up:
- what would change if the inner object were declared in `main` instead of inside the nested block
- or when cleanup would happen if this class closed a file in its destructor

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
