# Course Concepts

## Purpose
This folder holds the canonical repo-owned concept inventory for the course.

It exists to prevent concept loss between:
- external source extraction
- source-specific pedagogical mappings
- phase-local generation decisions
- final learner-facing gates

## Authority
Use this layer to answer:
- which concepts the repo explicitly tracks
- which concepts are prerequisites for other concepts
- which phase should first be responsible for a concept
- whether a concept is intro-required, practice-required, integration-required, support-only, or excluded

Do not use this layer to answer:
- what a specific external source contains
- what reading packet a learner should open next
- what one gate's pass / not pass logic should be

Those responsibilities belong to:
- `../source_integration/` for external-source structure and mappings
- `../../resources/` for learner-facing reading coverage
- `../phase_blueprints/` for phase-local allocation
- gate files for runtime behavior

## Working Rules
- A source concept is not considered preserved until it has either:
  - been mapped into a canonical course concept
  - been explicitly rejected with a reason
- A course concept is not considered safely planned until it has:
  - a stable course concept ID
  - prerequisite information where relevant
  - a first expected phase
  - a mastery role
- Course concepts should be canonical and repo-owned, not tied 1:1 to upstream wording.

## Folder Layout
- `README.md`
  This responsibility and workflow document.
- `SCHEMA.md`
  Schema rules for canonical course concept records.
- `records/`
  Versioned course concept maps, beginning with `K-001-cpp-systems-learning.yaml`.

## Workflow
1. Review the current source mapping and the already implemented phases.
2. Convert accepted source concepts into canonical course concepts.
3. Merge duplicates across sources when they represent the same repo-level concept.
4. Assign each course concept a first expected phase and mastery role.
5. Hand the concept set to the relevant phase blueprint.

## Notes
- This layer is allowed to be narrower or cleaner than any one external source.
- This layer is not allowed to silently drop a concept that the repo still intends to teach.
