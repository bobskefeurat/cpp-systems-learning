# Task: Numeric Safety Snapshot

## Goal
Write a small C++ program that:
- computes one mixed `int` and `double` result
- shows one unsigned arithmetic pitfall
- compares two floating-point values both exactly and with a tolerance

This is the current exercise for `Gate 0: Numeric Types and Safety` in `Phase 1: Core Language and Object Model`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Write a program in `workspace/main.cpp` that does all of the following:

- define `int itemCount{3};`
- define `double itemWeight{1.5};`
- compute `double safeTotal{itemCount * itemWeight};`
- define `unsigned int stock{1};`
- define `unsigned int sold{2};`
- compute `unsigned int wrappedRemaining{stock - sold};`
- compute `bool underflowLooksLarge{wrappedRemaining > 10u};`
- define `double computed{0.1 + 0.2};`
- define `double expected{0.3};`
- define `double tolerance{0.000001};`
- compute `bool exactFloatMatch{computed == expected};`
- compute `bool closeFloatMatch{computed > expected - tolerance && computed < expected + tolerance};`
- print exactly:

```text
safeTotal: 4.5
underflowLooksLarge: true
exactFloatMatch: false
closeFloatMatch: true
```

Initialize every numeric variable in this program with brace initialization.
Use `std::boolalpha` so the boolean results print as `true` and `false`.

## Constraints
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 0: Numeric Types and Safety`
- The program must build with zero warnings
- Use standard output only
- Keep the relevant numeric types explicit in code
- Initialize every numeric variable with braces

Do not introduce:
- custom classes
- containers
- `auto`
- explicit casts

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
safeTotal: 4.5
underflowLooksLarge: true
exactFloatMatch: false
closeFloatMatch: true
```

### Check 2: Code Shape
Confirm all of the following in your code:
- every numeric variable in the task uses brace initialization
- `safeTotal` comes from `itemCount * itemWeight`
- `wrappedRemaining` comes from `stock - sold`
- `underflowLooksLarge` comes from checking the wrapped unsigned result
- both the exact and tolerance-based floating-point comparisons are present
- `std::boolalpha` is used before printing the boolean values

### Check 3: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the output text is hardcoded, the arithmetic or comparison mechanisms are missing, brace initialization is inconsistent, or you still cannot explain why the booleans have the values they do.

## Be Ready To Explain
Be ready to answer these in your own words:

1. Why is brace initialization required in this gate?
2. Why does `itemCount * itemWeight` produce a `double` result?
3. Why does `wrappedRemaining` not become `-1`?
4. Why does `underflowLooksLarge` print `true`?
5. Why is `computed == expected` `false` here?
6. Why does the tolerance-based comparison print `true`?

Also be ready to explain one specific follow-up:
- why unsigned is not the default answer to "this value should not be negative"
- or what kind of bug a narrowing conversion can hide

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
