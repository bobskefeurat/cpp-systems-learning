# Readiness Check for Gate 0: Numeric Types and Safety

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 0: Numeric Types and Safety` defined in [../learner/PREP.md](../learner/PREP.md):

1. Signedness, ranges, and safe defaults
2. Promotions, conversions, and brace initialization
3. Floating-point precision and comparison strategy

## Standard Question Set
`Gate 0: Numeric Types and Safety` uses 3 readiness questions because the task depends on 3 core concepts.

### Question 1
Explain, in your own words:
- what signed and unsigned integers mean at a first-pass level
- why unsigned is not automatically a safer default
- what can happen when unsigned arithmetic would otherwise go below zero

### Question 2
Explain, in your own words:
- why `boxCount * boxWeight` produces a floating-point result
- why a small integer arithmetic expression should not be assumed to stay in the small type
- why brace initialization is a safer default in this gate

### Question 3
Explain, in your own words:
- why `0.1 + 0.2` and `0.3` should not be assumed to compare equal
- what a simple tolerance check is doing
- why that tolerance check does not make floating-point arithmetic exact

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
- Name exactly what is missing about signed versus unsigned reasoning or unsigned underflow behavior.
- If needed, point to:
  - `R-001` Gate 0 step 1
  - `R-001` Gate 0 step 2

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about promotions, brace initialization, or mixed arithmetic conversions.
- If needed, point to:
  - `R-001` Gate 0 step 4
  - `R-001` Gate 0 step 5
  - `R-003` Gate 0 step 1 only if exact conversion wording is still unclear
  - `R-003` Gate 0 step 2 only if implicit-conversion wording is still unclear

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about floating-point precision or comparison.
- If needed, point to:
  - `R-001` Gate 0 step 3
  - `R-001` Gate 0 step 6

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
