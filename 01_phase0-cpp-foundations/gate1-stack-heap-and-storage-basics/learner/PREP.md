# Prepare for Gate 1: Stack, Heap, and Storage Basics

## Before You Start
You do not need full mastery before you begin.
You only need a workable starting understanding for this gate.

## You Need To Explain
Before you start the task, make sure you can explain these ideas in simple words:

1. Scope and automatic lifetime
   - what a local variable is
   - what happens when a block ends
   - why a block-local variable can stop existing before `main` ends

2. Static and dynamic storage at a simple level
   - what a global variable is at a simple level
   - what `new int{...}` creates at a high level
   - what `delete` does for that dynamic object

3. Stack/heap language without myths
   - which kinds of objects can have automatic, static, and dynamic storage duration in a small program
   - why the local pointer variable and the dynamic integer are not the same object
   - why "stack vs heap" is only shorthand for a deeper storage/lifetime model

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-001.md).
  Use the `Gate 1` packet in that card as your main reading path.
- Use [R-003 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-003.md) only if the exact wording of storage duration or lifetime is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- which kinds of objects can last until program end
- which kinds of objects stop existing when their block ends
- why the dynamic object needs explicit cleanup
- why the pointer variable itself is still a local variable

## Next Step
Complete the readiness dialogue with the agent.
