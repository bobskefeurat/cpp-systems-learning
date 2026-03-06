# Prepare for Gate 0: Numeric Types and Safety

## Before You Start
You do not need full mastery before you begin.
You only need a workable starting understanding for this gate.

## You Need To Explain
Before you start the task, make sure you can explain these ideas in simple words:

1. Signed and unsigned behavior
   - what signed and unsigned integers each represent at a first-pass level
   - why unsigned is not automatically the safer default
   - what can happen when unsigned arithmetic would otherwise go below zero

2. Narrowing and arithmetic conversions
   - what narrowing means in this phase
   - why brace initialization is a safer default
   - why a mixed `int` and `double` expression produces a `double` result

3. Floating-point precision and comparison
   - why decimal-looking values may not be stored exactly
   - why calculated floating-point values often should not use `==`
   - what a simple tolerance check is doing

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_system/resources/resource_cards/R-001.md).
  Use `Phase 1 Packet A: Numeric Safety Fundamentals` in that card as your main reading path.
- Use [R-003 Card](../../../00_system/resources/resource_cards/R-003.md) only if the exact wording around arithmetic conversions or implicit conversions is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- why unsigned arithmetic can produce a surprising non-negative result
- why brace initialization is required in this gate
- why a tolerance-based floating-point comparison exists in addition to exact equality

## Next Step
Complete the readiness dialogue with the agent.
