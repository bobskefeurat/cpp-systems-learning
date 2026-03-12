# PHASE_VALIDATION

## Purpose
Define the repeatable quality-check process for a generated or heavily revised phase.

This file exists because gate validation alone cannot prove that a whole phase still preserves all of its planned concepts.

## Validation Outcomes
A phase validation run should end in one of these states:
- approved with no findings
- approved with documented residual risk
- not ready; blocking findings must be fixed before the phase is treated as complete

## Standard Validation Sequence (v1)
Run these checks in order.

1. Structural roll-up
   - Run `.\00_system\authoring\validate-structure.ps1`.
   - Confirm that the phase and all generated gates still match the required folder structure.

2. Blueprint coverage check
   - Load the relevant phase blueprint.
   - Confirm that every concept assignment in the blueprint still points to a real gate, a real support-only surface, or an explicit later target.
   - If a concept is marked `deferred-within-phase`, its named gate must exist in the same phase.
   - If a concept is marked `deferred-to-later-phase`, the target phase or gate must be named in the rationale.

3. Required-concept completeness check
   - Confirm that every course concept whose `mastery_role` is one of:
     - `intro-required`
     - `practice-required`
     - `integration-required`
     has an explicit non-empty assignment in the phase blueprint when its `first_expected_phase_id` is the target phase.
   - If any required concept is missing or unresolved, the phase is not ready.

4. Reading-coverage check
   - Confirm that each learner-facing required concept has curated reading coverage.
   - Support-only concepts may stay reading-only, but they still need an explicit placement decision.

5. Gate coherence roll-up
   - Confirm that each generated gate matches the concept role assigned to it in the blueprint.
   - A `primary-gate` concept must be visible in task requirements, pass logic, and evaluation evidence.
   - A `supporting-reading` concept must not quietly become a hidden pass requirement.

6. Gate validation roll-up
   - Run `GATE_VALIDATION.md` for each generated or heavily revised gate.
   - Any gate with blocking findings blocks the whole phase.

7. Integration coverage check
   - Confirm that concepts marked `integration-required` or `deferred-within-phase` are actually visible in the integration gate named by the blueprint.
   - The integration gate should combine prior concepts, not become a dumping ground for forgotten fundamentals.

8. Residual-risk note
   - Record any concepts that still depend on evaluator inspection or explanation more than direct runtime evidence.
   - Residual risk is acceptable only when the requirement and inspection point are explicit.

## Required Validation Questions (v1)
During validation, the reviewer should be able to answer all of these:

1. Does the phase blueprint account for every required concept in scope?
2. Can each generated gate be traced back to a stable concept allocation decision?
3. Are any concepts silently absent from the generated learner-facing surfaces?
4. Does every learner-facing required concept have curated reading support?
5. Does the integration gate integrate earlier work instead of rescuing forgotten scope?

## Expected Validation Record (v1)
When reporting a phase validation run, include at minimum:
- structure: pass / fail
- blueprint coverage: pass / fail
- required-concept completeness: pass / fail
- reading coverage: pass / fail
- gate coherence roll-up: pass / fail
- gate validation roll-up: pass / fail
- integration coverage: pass / fail
- findings
- residual risk

## Notes
- Phase validation is part of phase generation, not a later documentation step.
- A phase can be structurally clean and still fail concept preservation.
- If the phase blueprint changes materially, rerun the phase validation sequence.
