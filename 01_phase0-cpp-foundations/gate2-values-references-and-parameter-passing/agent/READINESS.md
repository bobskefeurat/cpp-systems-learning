# Readiness Check for Gate 2: Values, References, and Parameter Passing

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 2: Values, References, and Parameter Passing` defined in [../learner/PREP.md](../learner/PREP.md):

1. Arguments and parameters
2. Pass by value
3. Pass by reference

## Standard Question Set
`Gate 2: Values, References, and Parameter Passing` uses 3 readiness questions because the task depends on 3 core concepts.

### Question 1
Explain, in your own words:
- what an argument is in this gate
- what a parameter is in this gate
- why the two words are related but not interchangeable

### Question 2
Explain, in your own words:
- what the function receives when an `int` is passed by value
- why changing that parameter does not change the caller's variable
- what the caller still sees after the function returns

### Question 3
Explain, in your own words:
- what `int&` means in a parameter list for this gate
- why changing that parameter changes the caller's variable
- why a reference parameter is not the same thing as a pointer parameter

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
- assign the smallest relevant retry step
- ask the learner to come back with a better explanation

The AI should not:
- start guiding the actual solution yet
- turn the readiness check into a long oral exam
- collapse directly into answer-key help

## Suggested AI Follow-Up Format
If the learner is not ready, the AI should respond in this shape:

Status: Not ready yet.

Q1: Sufficient / Not sufficient.
- Name exactly what is missing about arguments and parameters.
- If needed, point to:
  - `R-001` step 1

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about pass by value and copying.
- If needed, point to:
  - `R-001` step 1 or 3

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about reference aliasing or pointer/reference confusion.
- If needed, point to:
  - `R-001` step 2 or 3
  - `R-004` only if the learner still uses bad rules of thumb

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
