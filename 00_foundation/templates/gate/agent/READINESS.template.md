# Readiness Check for Gate {{N}}: {{Display Name}}

## Purpose
This file defines the short pre-task dialogue that happens before the learner gets solution guidance.

The readiness check is not the same as the final gate evaluation.
It only answers one question:

`Is the learner ready to start solving the task?`

## Core Concepts Covered
The readiness check must cover the core concepts for `Gate {{N}}: {{Display Name}}` defined in [../learner/PREP.md](../learner/PREP.md):

1. {{Core concept 1}}
2. {{Core concept 2}}
3. {{Core concept 3}}

## Standard Question Set
`Gate {{N}}: {{Display Name}}` uses {{N}} readiness questions because the task depends on {{N}} core concepts.

### Question 1
Explain, in your own words:
- {{prompt 1}}
- {{prompt 2}}
- {{prompt 3}}

### Question 2
Explain, in your own words:
- {{prompt 1}}
- {{prompt 2}}
- {{prompt 3}}

### Question 3
Explain, in your own words:
- {{prompt 1}}
- {{prompt 2}}
- {{prompt 3}}

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
- Name exactly what is missing in {{concept area}}.
- If needed, point to:
  - `{{R-###}}` {{specific step or page}}

Q2: Sufficient / Not sufficient.
- Name exactly what is missing in {{concept area}}.
- If needed, point to:
  - `{{R-###}}` {{specific step or page}}

Q3: Sufficient / Not sufficient.
- Name exactly what is missing in {{concept area}}.
- If needed, point to:
  - `{{R-###}}` {{specific step or page}}

Then:
- ask the learner to answer again in their own words
- ask only for the weak question again unless multiple core concepts are weak

## Next Step
When readiness is sufficient, continue to:

- [../learner/TASK.md](../learner/TASK.md)
