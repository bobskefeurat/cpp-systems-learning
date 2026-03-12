# Prepare for Gate 3: First Class, Lifetime, and Basic RAII

## Before You Start
You do not need full mastery before you begin.
You only need a workable starting understanding for this gate.

## You Need To Explain
Before you start the task, make sure you can explain these ideas in simple words:

1. Class, object, and constructor
   - what a class is at a simple level
   - what an object of that class is
   - what the constructor does when the object is created
   - how a small public member function can expose the tag to code outside the class

2. Destructor and scope-bound lifetime
   - what a destructor does at a simple level
   - when a block-local object is destroyed
   - why an inner object can be destroyed before `main` ends

3. Basic RAII thinking
   - why cleanup tied to the destructor is deterministic
   - why passing an object to a helper function does not decide when the object is destroyed
   - what it would mean if this class were cleaning up a file or some other resource

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-001.md).
  Use the `Gate 3` packet in that card as your main reading path.
- Use [R-003 Card](../../../00_system/resources/resource_cards/01_phase0-cpp-foundations/R-003.md) only if the exact wording of lifetime or destructor behavior is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- why the constructor message appears when an object is created
- how `observe` can read the object's tag without owning or controlling the object's lifetime
- why the inner object is destroyed before the line after the block
- why the outer object lasts until the end of `main`
- why destructor-based cleanup is the basic RAII idea here

## Next Step
Complete the readiness dialogue with the agent.
