# Readiness Check for Gate 1: Stack, Heap, and Storage Basics

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 1: Stack, Heap, and Storage Basics` defined in [../learner/PREP.md](../learner/PREP.md):

1. Scope and automatic lifetime
2. Static and dynamic storage at a simple level
3. Stack/heap language without myths

## Standard Question Set
`Gate 1: Stack, Heap, and Storage Basics` uses 3 readiness questions because the task depends on 3 core concepts.

### Question 1
Explain, in your own words:
- what a local variable is
- what happens when a block ends
- why a variable from an inner block can stop existing before `main` ends

### Question 2
Explain, in your own words:
- what a global integer represents at a simple level
- what `new int{30}` creates at a high level
- what `delete` does for that dynamic object

### Question 3
Explain, in your own words:
- which kinds of objects can have automatic, static, and dynamic storage duration in a small program
- why the local pointer variable is not the same object as the dynamic integer
- why "stack vs heap" is only shorthand and not the whole explanation

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
- Name exactly what is missing in scope and automatic lifetime.
- If needed, point to:
  - `R-001` step 1 or 2

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about the global integer, `new`, or `delete`.
- If needed, point to:
  - `R-001` step 2
  - `R-001` step 4 only if the category names are still unclear

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about storage categories or the pointer/object distinction.
- If needed, point to:
  - `R-001` step 3
  - `R-001` step 4 only if the category names are still unclear
  - `R-003` step 1 only if a precise definition is needed

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
