# Task: Copy Or Alias

## Goal
Write a small C++ program that:
- uses one function with pass by value
- uses one function with pass by reference
- shows, through exact output, how the caller's variable changes differently in each case

This is the current exercise for `Gate 2: Values, References, and Parameter Passing` in `Phase 0: C++ Foundations`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Write a program in `workspace/main.cpp` that does all of the following:

- define one function that takes an `int` by value, increments the parameter by `1`, and prints the parameter value
- define one function that takes an `int&` by reference, increments the parameter by `1`, and prints the parameter value
- in `main`, start with one integer variable that has the value `5`
- call the by-value function with that variable
- call the by-reference function with that same variable
- print exactly:

```text
start: 5
inside value: 6
after value: 5
inside reference: 6
after reference: 6
```

The by-value and by-reference behavior must come from the actual function calls, not from hardcoded output only.

## Constraints
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 2: Values, References, and Parameter Passing`
- The program must build with zero warnings
- Use standard output only
- Use function parameters to show the difference

Do not introduce:
- pointers
- dynamic allocation
- classes
- containers
- return-value tricks that avoid the parameter-passing point of the task

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
start: 5
inside value: 6
after value: 5
inside reference: 6
after reference: 6
```

### Check 2: Function Audit
Confirm all of the following in your code:
- there is one function with an `int` value parameter
- there is one function with an `int&` reference parameter
- both functions increment their parameter and print from inside the function
- `main` uses the same variable in both calls

### Check 3: Warnings
Compile with the baseline command and confirm that no warnings are produced.

You are not done yet if the output is right only because of hardcoded text, the function signatures do not show the value/reference difference, or you still cannot explain why the final two lines differ.

## Be Ready To Explain
Be ready to answer these in your own words:

1. What is the argument in each function call?
2. What is the parameter inside each function?
3. Why does the by-value function print `6` but leave the caller's variable as `5`?
4. Why does the by-reference function print `6` and leave the caller's variable as `6`?
5. What does `int&` mean in the reference function's parameter list for this gate?
6. Why is a reference parameter not the same thing as a pointer parameter?

Also be ready to explain one specific follow-up:
- what would happen if the second function also took `int` by value
- or what would change if the program used two different caller variables instead of one

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
