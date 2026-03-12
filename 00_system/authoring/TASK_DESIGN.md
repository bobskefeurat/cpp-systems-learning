# TASK_DESIGN

## Purpose
Define how learner-facing tasks should be written so they become real exercises and problems instead of answer-shaped transcription prompts.

This file exists because a gate can have correct concepts and still fail pedagogically if the task effectively says "type these declarations and expressions".

## Core Rule
A task must give the learner a bounded problem to solve.

It must not mainly test whether the learner can copy:
- a provided declaration list
- a provided expression list
- a provided code skeleton that already determines the whole solution
- a provided final report whose logic is already fully spelled out

## What A Good Task Does
A good task:
- operationalizes a small explicit concept set
- gives the learner at least one meaningful design or debugging decision
- keeps the scope bounded enough to finish without project sprawl
- makes pass evidence observable without turning the task into an answer key
- separates fixed requirements from allowed freedom

## Required Task Shape
For new or materially revised gates, prefer this shape inside `learner/TASK.md`:
1. `## Goal`
2. `## Before You Start`
3. `## Task`
4. `## Fixed Requirements`
5. `## Allowed Freedom`
6. `## Constraints`
7. `## Build And Run`
8. `## Self-Check`
9. `## Be Ready To Explain`
10. `## Bring To Evaluation`

Older gates may still use the simpler legacy shape until they are revised.

## Meaningful Decision Rule
The learner should normally have to do at least one of these:
- choose explicit types, structure, or decomposition inside bounded constraints
- diagnose and repair a flawed implementation
- select between bounded alternatives and justify the choice
- make a small interface or representation decision and explain the tradeoff
- connect observed behavior back to the governing mechanism in their own code

If the task removes all such decisions, it is probably too answer-shaped.

## Fixed Requirements vs Allowed Freedom
Every well-shaped task should distinguish:

- Fixed requirements
  What must be true for the gate to count as passed.
  Examples:
  - required observations
  - required mechanism classes
  - disallowed features
  - compile/warning requirements

- Allowed freedom
  What the learner is still expected to decide.
  Examples:
  - variable names
  - helper function breakdown
  - local decomposition
  - tolerance choice within a bounded acceptable range
  - exact representation choice among several valid ones

This split prevents both under-specification and answer-key tasks.

## Evidence-First Design Rule
Design the task backwards from pass evidence.

Before writing the task, identify:
- what must be observable in runtime behavior
- what must be observable in code shape
- what must be observable in compile/build behavior
- what must still be explained in the learner's own words

Then write the task so those things become visible without spelling out the whole solution.

## Good Task Types
Common valid task types for this repo:
- implement a bounded program or subsystem
- repair a broken or misleading implementation
- debug a bounded failure
- refactor a bounded artifact while preserving required behavior
- compare bounded tradeoffs and justify a chosen design
- integrate several earlier concepts into one controlled project

## Anti-Patterns
Treat these as design failures unless there is a strong documented reason:

1. Fill-in-the-blank tasks
   The task already gives the exact declarations, exact expressions, and exact report logic.

2. Hidden-answer starter code
   The learner only needs to uncomment or lightly rename the intended solution.

3. Output-only tasks
   The task pretends to be conceptual, but only checks literal output and does not require the intended mechanism.

4. Fake freedom
   The task claims to allow choice, but every meaningful choice has already been fixed implicitly.

5. Scenario drift
   A contextual story quietly introduces requirements that are not stated in the technical task rules.

## When Direct Specification Is Acceptable
Some gates may legitimately specify exact syntax or exact commands more directly.

This is acceptable when the exact thing being specified is itself the concept under test, for example:
- a compiler command shape
- a required warning-flag baseline
- a tiny syntax pattern the learner is explicitly practicing for the first time
- a precise output format when literal output is part of the required observable behavior

Even then, avoid specifying more of the solution than the concept actually requires.

## Phase and Gate Use
- `PHASE_GENERATION.md` should use this file when generating new tasks.
- `GATE_VALIDATION.md` should reject tasks that are still answer-shaped.
- `agent/SPEC.md` should describe the intended task shape in a way that preserves the exercise/problem character.

## Notes
- A bounded task can still be very explicit about pass conditions.
- The goal is not vagueness. The goal is to avoid handing over the whole solution path.
