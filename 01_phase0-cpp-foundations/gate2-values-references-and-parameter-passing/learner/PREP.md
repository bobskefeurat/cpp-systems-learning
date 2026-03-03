# Prepare for Gate 2: Values, References, and Parameter Passing

## Before You Start
You do not need full mastery before you begin.
You only need a workable starting understanding for this gate.

## You Need To Explain
Before you start the task, make sure you can explain these ideas in simple words:

1. Arguments and parameters
   - what an argument is at the call site
   - what a parameter is inside the function
   - why they are related but not the same thing

2. Pass by value
   - what it means for a parameter to receive a copy
   - why changing a by-value parameter does not change the original variable
   - what the caller still sees after the function returns

3. Pass by reference
   - what `int&` means in a parameter list for this gate
   - why changing a reference parameter changes the caller's variable
   - why a reference parameter is not just a pointer with different spelling

## Read This
Read in this order:

- Start with [R-001 Card](../../../00_foundation/resource_cards/R-001.md).
  Use the `Gate 2` packet in that card as your main reading path.
- Use [R-004 Card](../../../00_foundation/resource_cards/R-004.md) only if the difference between value, reference, and pointer reasoning is still unclear.
- If the agent later sends you to another curated resource, follow that exact reading assignment.

## Stop When
Move to the readiness check when you can explain:
- what the function receives in a call by value
- what the function receives in a call by reference
- why one call can leave the caller unchanged while another call changes it
- why argument and parameter are not the same word for the same thing

## Next Step
Complete the readiness dialogue with the agent.
