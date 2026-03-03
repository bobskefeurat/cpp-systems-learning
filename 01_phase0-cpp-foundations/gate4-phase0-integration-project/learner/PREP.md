# Prepare for Gate 4: Phase 0 Integration Project

## Before You Start
You do not need new theory before this task.
You need a workable refresh of the main concepts from `Gate 0` through `Gate 3`.

## You Need To Explain
Before you start the project, make sure you can explain these ideas in simple words:

1. Compile command, warnings, and console I/O
   - what the baseline `g++` command is doing at a high level
   - why zero warnings are still required in a larger task
   - how the input values reach the program and how the report is printed

2. Storage and cleanup
   - what a global integer is in this phase
   - what a local integer is in this task
   - what a dynamically allocated integer is, how its value is used in the helper calls, and why it still needs `delete` plus pointer reset

3. Preview vs apply behavior
   - what it means for one helper to work on a copy
   - what it means for another helper to work on the caller's variable by reference
   - why the two helpers must produce different effects

4. Scope-bound lifetime
   - why an inner scope object can leave before the program ends
   - why the outer scope object leaves last
   - why destructor-based cleanup is the RAII idea reused here

5. Integration map
   - where each earlier gate concept will appear in one program
   - which part will prove Gate 0 behavior, Gate 1 behavior, Gate 2 behavior, and Gate 3 behavior
   - how to keep the project bounded instead of turning it into a larger system

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_foundation/resource_cards/R-001.md).
  Use the `Gate 4` packet in that card as your main refresh path.
- Use [R-003 Card](../../../00_foundation/resource_cards/R-003.md) only if the exact wording of storage duration, lifetime, or destructor behavior is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- what your program will read from input and what it will print
- which variable in your plan is global, local, and dynamic
- why the helper calls should use the value stored in the dynamic integer while that object is still alive
- which helper in your plan will be by value and which will be by reference
- why the inner scope object must leave before the outer one
- how the final project stays inside Phase 0 concepts instead of introducing new ones

## Next Step
Complete the readiness dialogue with the agent.
