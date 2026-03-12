# Readiness Check for Gate 3: First Class, Lifetime, and Basic RAII

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 3: First Class, Lifetime, and Basic RAII` defined in [../learner/PREP.md](../learner/PREP.md):

1. Class, object, and constructor
2. Destructor and scope-bound lifetime
3. Basic RAII thinking

## Standard Question Set
`Gate 3: First Class, Lifetime, and Basic RAII` uses 3 readiness questions because the task depends on 3 core concepts.

### Question 1
Explain, in your own words:
- what a class is at a simple level
- what an object of that class is
- what the constructor does when an object is created
- why a small public member function can expose stored state safely

### Question 2
Explain, in your own words:
- what a destructor does at a simple level
- when a block-local object is destroyed
- why an inner-scope object can be destroyed before `main` ends

### Question 3
Explain, in your own words:
- why cleanup tied to a destructor is deterministic
- why passing an object to a helper function does not decide when the object is destroyed
- what it would mean if this class cleaned up a file or some other resource

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
- Name exactly what is missing about class, object, constructor, or the class interface used by `observe`.
- If needed, point to:
  - `R-001` step 1 or 2

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about destructor timing or scope-bound lifetime.
- If needed, point to:
  - `R-001` step 3
  - `R-003` lifetime or destructor entry only if the learner still needs exact wording

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about deterministic cleanup or the RAII idea.
- If needed, point to:
  - `R-001` step 3
  - `R-003` only if the learner still uses vague terminology about lifetime

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
