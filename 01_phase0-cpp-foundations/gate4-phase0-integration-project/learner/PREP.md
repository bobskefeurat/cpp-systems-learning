# Prepare for Gate 4: Phase 0 Integration Project

## Before You Start
You do not need new theory before this task.
You need a workable refresh of the main concepts from `Gate 0` through `Gate 3`.

## You Need To Explain
Before you start the project, make sure you can explain these ideas in simple words:

1. Compile command, warnings, and console I/O
   - what the baseline `g++` command is doing at a high level
   - why zero warnings are still required in a larger program
   - how input reaches a program and how output is produced

2. Storage and cleanup
   - what a global integer represents at this phase level
   - what a local integer represents in a simple program
   - what a dynamically allocated integer is, why its value must be used while it is still alive, and why it still needs `delete` plus pointer reset

3. Preview vs apply behavior
   - what it means for one helper to work on a copy
   - what it means for another helper to work on the caller's variable by reference
   - why the two helpers must produce different effects

4. Scope-bound lifetime
   - why an inner scope object can leave before the program ends
   - why the outer scope object leaves last
   - why destructor-based cleanup is the RAII idea reused here

5. Integration map
   - which earlier Phase 0 concept groups an integration task needs to combine
   - what each earlier gate contributes at a concept level
   - how to keep the integration work bounded instead of turning it into a larger system

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-001.md).
  Use the `Gate 4` packet in that card as your main refresh path.
- Use [R-003 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-003.md) only if the exact wording of storage duration, lifetime, or destructor behavior is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- how input reaches the program and how output is produced
- which kinds of values can be global, local, and dynamic
- why helper calls should use a dynamically allocated value while that object is still alive
- why pass by value and pass by reference must lead to different caller-visible effects
- why the inner scope object must leave before the outer one
- how an integration task can stay inside Phase 0 concepts instead of introducing new ones

## Next Step
Complete the readiness dialogue with the agent.
