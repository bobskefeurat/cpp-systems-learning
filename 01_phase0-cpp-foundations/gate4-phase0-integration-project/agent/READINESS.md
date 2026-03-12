# Readiness Check for Gate 4: Phase 0 Integration Project

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate 4: Phase 0 Integration Project` defined in [../learner/PREP.md](../learner/PREP.md):

1. Compile command, warnings, and console I/O
2. Storage and cleanup
3. Preview vs apply behavior
4. Scope-bound lifetime
5. Integration map

## Standard Question Set
`Gate 4: Phase 0 Integration Project` uses 5 readiness questions because the task depends on 5 core concept groups.

### Question 1
Explain, in your own words:
- what the baseline compile command is doing at a high level
- why zero warnings still matter in a larger program
- how input reaches a program and how output is produced

### Question 2
Explain, in your own words:
- what a global integer represents at this phase level
- what a dynamically allocated integer represents at a simple level
- why a dynamically allocated value must be used while it is still alive
- why the dynamic integer still needs `delete` and pointer reset

### Question 3
Explain, in your own words:
- what pass by value proves about copies and caller state
- what pass by reference proves about aliasing and caller state
- why the two helpers must not have the same effect on the caller's variable

### Question 4
Explain, in your own words:
- why the inner scope object leaves before the outer one
- what a destructor demonstrates about scope-bound cleanup
- why that is the same basic RAII idea from the earlier gate

### Question 5
Explain, in your own words:
- which earlier Phase 0 concept groups an integration task needs to combine
- how to keep an integration task bounded to already learned Phase 0 concepts

## Readiness Standard
The learner is ready to start when:
- all core concepts are covered
- the answers are understandable in the learner's own words
- the learner shows a workable starting understanding
- the learner can describe how the concept groups fit together without drifting into new topics

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
- Name exactly what is missing about the compile command, warnings, or I/O flow.
- If needed, point to:
  - `R-001` Gate 4 packet row 1 or 2

Q2: Sufficient / Not sufficient.
- Name exactly what is missing about global/local/dynamic storage or cleanup.
- If needed, point to:
  - `R-001` Gate 4 packet row 3
  - `R-003` Gate 4 packet only if the learner still needs exact terminology

Q3: Sufficient / Not sufficient.
- Name exactly what is missing about by-value vs by-reference behavior.
- If needed, point to:
  - `R-001` Gate 4 packet row 4

Q4: Sufficient / Not sufficient.
- Name exactly what is missing about destructor timing or scope-bound lifetime.
- If needed, point to:
  - `R-001` Gate 4 packet row 5
  - `R-003` Gate 4 packet only if exact wording is still needed

Q5: Sufficient / Not sufficient.
- Name exactly what is missing about the integration concept map or scope control.
- If needed, point to:
  - `R-001` Gate 4 packet rows that match the weak subsystem

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
