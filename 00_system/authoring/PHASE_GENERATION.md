# PHASE_GENERATION

## Purpose
Define the repeatable workflow for generating a whole phase from canonical course concepts, a phase blueprint, curated reading coverage, and the existing gate templates.

This file exists because `COURSE_PLAN.md` answers "what phase comes next", but not "how do we generate that phase without losing concepts".

## Required Inputs
Before a phase-generation run begins, all of these must exist:
- a canonical course concept record in `course_concepts/records/`
- a phase blueprint for the target phase in `phase_blueprints/`
- source-integration records that justify the planned scope
- curated reading coverage in `../resources/RESOURCES.md`, `../resources/RESOURCE_MAP.md`, and relevant `resource_cards/`
- the standard authoring templates and folder rules from `GATE_STRUCTURE.md`

## Phase Generation Sequence (v1)
Run these steps in order.

1. Freeze the target phase inputs
   - Identify the target phase ID and title.
   - Load the relevant course concepts, phase blueprint, source mapping, and curated reading records.
   - Do not start gate drafting while the concept list or blueprint is still unsettled.

2. Run the concept-allocation precheck
   - Confirm that every course concept whose `first_expected_phase_id` is the target phase appears in the phase blueprint.
   - Confirm that every listed concept has one explicit assignment status.
   - Allowed statuses are:
     - `primary-gate`
     - `integration-gate`
     - `supporting-reading`
     - `deferred-within-phase`
     - `deferred-to-later-phase`
     - `excluded-with-reason`
   - If a concept has no explicit status, stop. The phase is not generation-ready.

3. Run the reading-coverage precheck
   - Confirm that each concept the phase intends to require learner-facing has curated reading support.
   - If reading coverage is missing, either:
     - add companion resources first
     - narrow the concept to a support-only role
     - defer it explicitly
   - Do not push an uncovered concept into a learner-facing gate.

4. Lock the gate inventory
   - Use the phase blueprint to decide the gate count, gate kinds, and planned folder names.
   - Treat this gate inventory as phase-local source of truth during generation.
   - Do not pull in extra gates ad hoc unless the blueprint is updated first.

5. Generate learner-facing reading packets if needed
   - Confirm that each gate can point to specific resource-card packets.
   - Add or revise phase-local resource cards before writing `PREP.md` when the reading route is still vague.

6. Generate the gates
   - Create or revise the phase `README.md`.
   - Generate each gate from the templates and the assigned concept set.
   - When writing or materially revising `learner/TASK.md`, use `TASK_DESIGN.md`.
   - Use the blueprint to decide:
     - which concepts are task-required
     - which concepts are readiness-only
     - which concepts stay support-only
     - which concepts are intentionally deferred to the integration gate or a later phase
   - Preserve a real bounded exercise or problem shape. Do not generate a task that can be completed mainly by copying a provided declaration list, expression list, or pre-shaped code path.

7. Validate each gate
   - Run `GATE_VALIDATION.md` for each generated or materially revised gate.
   - A phase is not complete if any generated gate still has blocking findings.

8. Validate the phase as a whole
   - Run `PHASE_VALIDATION.md`.
   - Confirm that no required concept was lost between blueprint and generated gates.

9. Update rollout surfaces
   - Update `COURSE_PLAN.md`, `STATUS.md`, and phase `README.md` only after the phase passes generation and validation checks.
   - Do not mark a phase learner-ready while its coverage state is still unresolved.

## Working Rules
- The course concept record decides what the repo must preserve.
- The phase blueprint decides where each preserved concept lands.
- Curated reading decides what can be learner-facing.
- Gate files operationalize only the concepts that survive all three filters.

## Stop Rules
Stop the generation run and revise the inputs if any of these happen:
- a required concept has no explicit assignment
- a micro-gate quietly depends on a concept assigned elsewhere
- reading coverage is missing for a concept that the task requires
- a gate needs ad hoc scope changes that contradict the blueprint
- a generated task becomes answer-shaped and can be passed mainly by transcription
- the integration gate would become the first time a supposedly earlier concept appears at all

## Notes
- A concept does not need to become its own micro-gate to count as preserved.
- A concept does need an explicit status so it cannot disappear silently.
- `deferred-within-phase` is acceptable only when the phase blueprint names the target gate explicitly.
