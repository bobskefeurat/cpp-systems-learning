# Task: Two Numbers

## Goal
Write a small C++ program that:
- reads two integers from standard input
- computes their sum
- prints the result to standard output

This is the current exercise for `Gate 0: Compile, Run, and Basic I/O` in `Phase 0: C++ Foundations`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
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

## Constraints
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

## Build And Run
Run these commands from inside `workspace/`:

```powershell
g++ main.cpp -std=c++20 -Wall -Wextra -Wpedantic -o main
.\main
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

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

You are not done yet if the program builds but the output format is wrong or warnings are still present.

## Be Ready To Explain
Be ready to answer these in your own words:

1. What does `g++` do in this task?
2. What does `main.cpp` represent?
3. What does `-o main` do?
4. Why are warnings part of the task and not optional cleanup?
5. What is the difference between a compile error and a wrong output at run time?

Also be ready to explain one compiler message or warning in simple terms.

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `workspace/main.cpp`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
