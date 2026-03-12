# Task: Numeric Safety Check

## Goal
Write a small C++ program that:
- builds a small diagnostic report for suspicious numeric assumptions
- makes mixed arithmetic, promotions, and unsigned wrap behavior visible
- compares two floating-point values both exactly and with a tolerance

This is the current exercise for `Gate 0: Numeric Types and Safety` in `Phase 1: Core Language and Object Model`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Another developer is misreading the output from a tiny warehouse utility. Build a five-line diagnostic program in `workspace/main.cpp` that tests the following assumptions with real computations:

- three boxes at `1.5` each can be handled without mixed-type reasoning
- two large scanner counts stored in a small unsigned type can be reasoned about as if the arithmetic stays in that small type
- if stock is `1` and sold is `2`, unsigned subtraction should become `-1`
- `0.1 + 0.2` should equal `0.3` exactly

Use these facts in your program:
- there are `3` boxes
- each box weighs `1.5`
- the morning scanner count is `60000`
- the evening scanner count is `60000`
- the current stock is `1`
- the sold amount is `2`
- the computed floating-point value must come from `0.1 + 0.2`
- the expected floating-point target is `0.3`

Print this report in this order:

```text
shipmentWeight: 4.5
combinedCount: 120000
wrapDetected: true
exactMatch: false
closeMatch: true
```

## Fixed Requirements
- Solve the task in one source file: `workspace/main.cpp`.
- Make `shipmentWeight` come from mixed arithmetic between a whole-number quantity and a fractional weight.
- Store the two scanner counts in `unsigned short`, then derive `combinedCount` from adding those two values in a wider result context.
- Make `wrapDetected` come from a real unsigned subtraction using the stock and sold facts above.
- Make `exactMatch` come from an exact floating-point equality check.
- Make `closeMatch` come from a tolerance-based floating-point comparison.
- Initialize every numeric variable in this program with brace initialization.
- Use `std::boolalpha` so the boolean results print as `true` and `false`.
- Derive every reported value from code. Do not hardcode the final report lines.

## Allowed Freedom
- Choose your own variable names.
- Choose your own helper variables and local decomposition.
- Choose the exact wider result type used for `combinedCount`.
- Choose the unsigned type used for the stock subtraction.
- Choose the tolerance value and comparison form, as long as `exactMatch` ends up `false` and `closeMatch` ends up `true`.
- Choose how you detect the unsigned wrap, as long as the detection is derived from the actual subtraction result.

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
- bitwise operators

## Build And Run
Run these commands from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

### Check 1: Required Report Observations
Sample output:

```text
shipmentWeight: 4.5
combinedCount: 120000
wrapDetected: true
exactMatch: false
closeMatch: true
```

### Check 2: Required Mechanisms
Confirm all of the following in your code:
- every numeric variable in the task uses brace initialization
- `shipmentWeight` comes from mixed arithmetic between the box count and box weight
- the two scanner inputs are stored in `unsigned short`
- `combinedCount` comes from adding those scanner inputs instead of manually typing `120000`
- the subtraction that drives `wrapDetected` is unsigned and uses the stock and sold facts from the task
- `wrapDetected` comes from checking the subtraction result instead of hardcoding `true`
- both the exact and tolerance-based floating-point comparisons are present
- `std::boolalpha` is used before printing the boolean values

### Check 3: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the report is mostly hardcoded, the scanner counts start in a wide type, the wrap check is hardcoded, brace initialization is inconsistent, or you still cannot explain why each reported boolean value has its current result.

## Be Ready To Explain
Be ready to answer these in your own words:

1. Why does the box-count calculation produce a floating-point result?
2. Why should the scanner-count addition not be reasoned about as staying `unsigned short`?
3. Why does the unsigned subtraction not produce `-1`?
4. Why does `wrapDetected` print `true` in your program?
5. Why is the exact floating-point comparison `false` here?
6. Why does the tolerance-based comparison still print `true`?

Also be ready to explain one specific follow-up:
- why brace initialization is safer than copy initialization for numeric variables in this gate
- or why signed overflow and unsigned wrap should not be treated as the same thing

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
