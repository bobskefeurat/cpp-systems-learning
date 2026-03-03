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
   - what a global variable is in this gate
   - what `new int{...}` creates at a high level
   - what `delete` is doing in this gate

3. Stack/heap language without myths
   - which objects in this gate are automatic, static, and dynamic
   - why the local pointer variable and the dynamic integer are not the same object
   - why "stack vs heap" is only shorthand for a deeper storage/lifetime model

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_foundation/resource_cards/R-001.md).
  Use the `Gate 1` packet in that card as your main reading path.
- Use [R-003 Card](../../../00_foundation/resource_cards/R-003.md) only if the exact wording of storage duration or lifetime is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- which object in this gate lasts until program end
- which objects stop existing when their block ends
- why the dynamic object needs explicit cleanup
- why the pointer variable itself is still a local variable

## Next Step
Complete the readiness dialogue with the agent.
