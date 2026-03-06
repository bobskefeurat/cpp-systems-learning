# Source Integration

## Purpose
Define how external curriculum sources become normalized authoring data before the repo uses them for course planning, phase design, gate design, or task generation.

## Core Decision
- External sources remain the source of truth for their original content.
- Normalized source-integration records become the source of truth for programmatic generation inside this repo.
- Phase, gate, and task generators should use normalized records, not raw external links, as their primary input.

## Authority Model
This layer separates three different authorities that should not be collapsed into one source.

- Coverage authority
  Determines what the course is expected to cover.
  Example: a broad curriculum backbone such as `Modern-CPP-Programming`.
- Reading authority
  Determines what learner-facing reading can legitimately prepare a concept.
  This must come from curated resources in `../resources/RESOURCES.md`, not directly from raw source-integration records.
- Task authority
  Determines what learner-facing tasks are allowed to require.
  A learner-facing gate should only require concepts that are both:
  - present in the mapped curriculum scope
  - covered by curated reading or companion resources

Working rule:
- curriculum backbone decides `what belongs in the course`
- curated reading decides `what can be required learner-facing`
- gates and tasks operationalize only the overlap between those two

## What This Layer Is For
- extracting stable structure from external curriculum sources
- storing source metadata, provenance, confidence, and license status
- mapping source units and concepts to phase and gate candidates
- recording whether a source segment is suitable for reading, task authoring, reference, or exclusion
- making future generation deterministic and reviewable
- supporting gap analysis when a source is not sufficient on its own

## What This Layer Is Not For
- learner-facing runtime rules
- gate pass/not-pass logic
- copying third-party teaching material into the repo
- replacing `resources/RESOURCES.md` as the learner-facing curation layer

## Standard Record Types
This layer uses two record types.

1. `source_extraction`
   Normalized representation of what a source contains.
2. `pedagogical_mapping`
   Repo-specific interpretation of how extracted source data should map to phases, gates, reading use, and task-authoring use.

Keep these record types separate.
Extraction should describe the source.
Mapping should describe how this repo wants to use the source.

## Standard Workflow
1. Register the source candidate in `../resources/SOURCES.md`.
2. Create a `source_extraction` record from the source.
3. Create a `pedagogical_mapping` record for this repo.
4. Review gaps, exclusions, and companion-source needs.
5. Check whether planned concepts already have curated learner-facing reading in `../resources/RESOURCES.md`.
6. Prefer existing curated reading sources for learner-facing rollout, and add companion sources only where the current reading layer is insufficient.
7. Promote only the learner-safe parts of any source into `../resources/RESOURCES.md` when learner-facing use is actually desired.
8. Use the mapping record as the curriculum baseline input for phase, gate, and task generation.
9. Refresh the extraction record when the upstream source changes materially.

## Generator Use Rules
- Generators must prefer mapped concept IDs and gate clusters over free interpretation of the original source.
- Generators may only use concepts whose `task_authoring_role` allows task authoring.
- Learner-facing reading references must still go through `../resources/RESOURCES.md`.
- Learner-facing task generation must only require concepts that have curated reading coverage or an explicitly approved companion-reading path.
- `license_status` and `risk_flags` must be honored.
- Low-confidence or excluded content should not become primary task-authoring input without manual review.
- Generated outputs should preserve provenance back to the original source record.

## Folder Layout
- `README.md`
  This decision and workflow document.
- `SCHEMA.md`
  Schema rules for normalized source records.
- `records/`
  Versioned source-extraction and pedagogical-mapping instances used by authoring workflows and future generators.
- `templates/`
  Starter YAML files for new source integrations.

## Relationship To Other System Areas
- `../resources/`
  Learner-facing curation and reference policy.
- `../authoring/GATE_STRUCTURE.md`
  Phase and gate structure after source data has been mapped.
- `../authoring/GATE_VALIDATION.md`
  Validation process for the gates created from the mapped source data.

Load this folder only when:
- integrating a new external curriculum source
- planning future phases from external material
- building generators that should use normalized curriculum data
