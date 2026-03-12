# Readiness Check for Gate 0: Compile, Run, and Basic I/O

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 0: Compile, Run, and Basic I/O` defined in [../learner/PREP.md](../learner/PREP.md):

1. Source file and compile flow
2. Basic standard I/O
3. Warnings and compile time vs run time

## Standard Question Set
`Gate 0: Compile, Run, and Basic I/O` uses 3 readiness questions because the task depends on 3 core concepts.

### Question 1
Explain, in your own words:
- what `g++` does at a high level
- what `main.cpp` is
- what `-o main` does

### Question 2
Explain, in your own words:
- what `std::cout` is used for
- what `std::cin` is used for
- how input reaches a program and output leaves it

### Question 3
Explain, in your own words:
- what a compiler warning is
- why it matters even if the program still runs
- the difference between a compile-time problem and a run-time problem

## Readiness Standard
The learner is ready to start when:
- all core concepts are covered
- the answers are understandable in the learner's own words
- the learner shows a workable starting understanding

The learner does not need full mastery.

## If the Learner Is Not Ready
The AI should:
- identify the weak concept clearly
- say what the learner needs to understand better
- refer to the relevant curated resource
- ask the learner to come back with a better explanation

The AI should not:
- start guiding the actual solution yet
- turn the readiness check into a long oral exam
- collapse directly into answer-key help

## Suggested AI Follow-Up Format
If the learner is not ready, the AI should respond in this shape:

Status: Not ready yet.

Q1: Sufficient / Not sufficient.
- Name exactly what is missing in source file and compile flow.
- If needed, point to:
  - `R-001` step 2 for compile flow
  - `R-002` only for a specific flag such as `-o main`

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about `std::cin`, `std::cout`, input, or output.
- If needed, point to:
  - `R-001` step 4

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about warnings or compile time vs run time.
- If needed, point to:
  - `R-001` step 3

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
