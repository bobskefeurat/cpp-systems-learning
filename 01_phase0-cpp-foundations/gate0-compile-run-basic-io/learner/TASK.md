# Task: Two Numbers

## Goal
Write a small C++ program that:
- reads two integers from standard input
- computes their sum
- prints the result to standard output

This is the current exercise for `Gate 0: Compile, Run, and Basic I/O` in `Phase 0: C++ Foundations`.

It exists to verify the fundamentals of this gate:
- editing a source file
- compiling from the terminal
- handling warnings
- using `std::cin` and `std::cout`
- explaining the basic compile-and-run flow

## Before You Start
Before working on the task, complete:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task Prompt
Write a program in `workspace/main.cpp` that reads two integers and prints:

```text
Sum: <result>
```

Example:

Input:

```text
2 3
```

Output:

```text
Sum: 5
```

## Rules
- Use one source file only: `workspace/main.cpp`
- Compile from the terminal
- Use the baseline command for `Gate 0: Compile, Run, and Basic I/O`
- The program must build with zero warnings
- Use standard I/O only

Do not introduce:
- classes
- pointers
- dynamic allocation
- containers
- extra helper files

## Baseline Compile Command
Run this command from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
```

## Run Example
Run this from inside `workspace/`:

```powershell
.\main
```

## Required Submission Evidence
For evaluation, the learner should provide:
- the final `workspace/main.cpp`
- the exact compile command used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions

During evaluation, be ready to explain one compiler message or warning in your own words if the evaluator asks.

## What Good Completion Looks Like
You should aim for all of the following:
- `workspace/main.cpp` compiles with the baseline command
- the compile result has zero warnings
- the program correctly reads two integers
- the program prints the correct sum in the required format
- you can explain the compile command in simple terms
- you can explain a basic compiler message or warning in simple terms
- you can distinguish compile time from run time

## Test Cases
Use these as minimum checks:

### Test 1
Input:

```text
2 3
```

Expected output:

```text
Sum: 5
```

### Test 2
Input:

```text
10 -4
```

Expected output:

```text
Sum: 6
```

### Test 3
Input:

```text
0 0
```

Expected output:

```text
Sum: 0
```

## Check Questions
The learner should be able to answer these in their own words:

1. What does `g++` do in this task?
2. What does `main.cpp` represent?
3. What does `-o main` do?
4. Why are warnings part of the task and not optional cleanup?
5. What is the difference between a compile error and a wrong output at run time?
