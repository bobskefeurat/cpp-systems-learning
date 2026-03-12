# Course Concept Schema

## Purpose
Define the normalized schema used by canonical course concept records.

This schema is designed for deterministic phase generation:
- concepts are repo-owned, not source-owned
- prerequisites are explicit
- phase responsibility is explicit
- coverage expectations are explicit before gate drafting begins

## Design Rules
- Keep canonical course concepts separate from source extraction and source mapping.
- Use stable course concept IDs such as `KC-P1-NUM-SIGNEDNESS-RANGE`.
- Prefer one canonical concept per teachable idea the repo intends to preserve.
- Merge source-specific duplicates when they represent the same course-level idea.
- Keep concept inventory and phase allocation separate. Phase allocation belongs in `../phase_blueprints/`.

## Record Fields
Each course concept record should include all of these top-level fields:

| Field | Type | Notes |
| --- | --- | --- |
| `schema_version` | string | Schema version, for example `v1`. |
| `record_kind` | string | Must be `course_concept_map`. |
| `concept_map_id` | string | Stable record ID, for example `K-001`. |
| `target_program` | string | Repo or curriculum target. |
| `status` | string | One of: `bootstrap`, `active`, `deprecated`. |
| `phase_order` | list | Ordered phase IDs used by the course. |
| `notes` | string | Short record-level note. |
| `concepts` | list | Canonical course concept records. |

## Concept Fields
Each `concepts` item should include:

| Field | Type | Notes |
| --- | --- | --- |
| `course_concept_id` | string | Stable repo-owned concept ID. |
| `label` | string | Human-readable concept name. |
| `summary` | string | Short paraphrase of the teachable idea. |
| `category_tags` | list | Tags used for grouping or search. |
| `origin_refs` | list | Source, mapping, or local curriculum references such as `S-001:c0401` or `01_phase0-cpp-foundations`. |
| `prerequisite_course_concept_ids` | list | Stable course concept IDs. |
| `first_expected_phase_id` | string | The first phase expected to account for the concept. |
| `mastery_role` | string | One of: `intro-required`, `practice-required`, `integration-required`, `support-only`, `excluded`. |
| `requires_reading_coverage` | boolean | Whether learner-facing rollout requires curated reading support. |
| `requires_task_coverage` | boolean | Whether some gate in the owning phase must operationalize the concept in a task. |
| `requires_readiness_coverage` | boolean | Whether the concept should be checked before task start in its owning gate or phase. |
| `requires_evaluation_evidence` | boolean | Whether evaluation should require direct evidence for the concept. |
| `notes` | string | Short local note. |

## Validation Rules
- `course_concept_id` values must be unique.
- All `prerequisite_course_concept_ids` values must exist in the same record.
- `excluded` concepts must not require reading, task, readiness, or evaluation coverage.
- Concepts with mastery roles `intro-required`, `practice-required`, or `integration-required` must appear in a relevant phase blueprint before that phase can be considered complete.
- The schema allows a concept to come from multiple sources, but it should still have one canonical ID.

## Relationship To Other Layers
- `../source_integration/`
  Says what an upstream source contains and how it maps into the repo.
- `../phase_blueprints/`
  Says where a canonical course concept lands in a specific phase.
- `../../resources/`
  Says what learner-facing reading can prepare the concept safely.
