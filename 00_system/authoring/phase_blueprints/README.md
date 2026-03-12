# Phase Blueprints

## Purpose
This folder holds phase-local concept allocation records used before a phase is generated.

It exists to answer the question:
"Where does each preserved course concept land inside this phase?"

## Responsibility
Use a phase blueprint to decide:
- which concepts belong to which gate cluster
- which concepts are task-required versus support-only
- which concepts are deferred inside the phase
- which concepts are deferred to a later phase with an explicit reason
- what gate inventory the phase-generation run should use

Do not use a phase blueprint to decide:
- what an upstream source contains
- what the canonical concept inventory is for the whole course
- what the final learner-facing wording inside a gate should be

Those responsibilities belong to:
- `../source_integration/` for source structure
- `../course_concepts/` for canonical course concepts
- gate files for final runtime-facing wording

## Recommended Record Fields
Each phase blueprint should include:
- `schema_version`
- `record_kind`
- `blueprint_id`
- `phase_id`
- `title`
- `status`
- `source_mapping_refs`
- `gate_cluster_plan`
- `concept_assignments`
- `notes`

## Concept Assignment Rules
Every concept assignment should name:
- the `course_concept_id`
- one `assignment_status`
- the intended gate cluster or later target
- the learner-facing reading resources, when relevant
- a short rationale

Allowed `assignment_status` values:
- `primary-gate`
- `integration-gate`
- `supporting-reading`
- `deferred-within-phase`
- `deferred-to-later-phase`
- `excluded-with-reason`

## Completion Rule
A phase blueprint is not ready if any concept whose `first_expected_phase_id` matches the phase is missing from the blueprint.

## Notes
- `supporting-reading` means the concept may appear in reading or readiness, but it must not become a hidden pass requirement unless the blueprint changes.
- `deferred-within-phase` is valid only when a concrete target gate is named.
