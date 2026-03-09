# Resources

## Purpose
This folder holds the curated resource layer for the course system.
It separates active learner-facing resource policy from candidate sources and exact reading packets.

## Contents
- `RESOURCES.md`
  Curated resources the course agent may reference.
- `RESOURCE_MAP.md`
  Concept-to-resource routing for targeted support.
- `SOURCES.md`
  Candidate pool for future curation.
- `resource_cards/`
  Learner-safe reading packets for exact assignments.

## Rule
Use `RESOURCES.md` and `RESOURCE_MAP.md` when deciding what the learner may be sent to.
Use `resource_cards/` when a learner needs a narrow reading assignment rather than a whole site or manual.
Before an external link is used in learner-facing guidance, open it and verify that it resolves and contains the promised content.
If a stable deep link is not available, say so explicitly in the packet and name the section the learner should find on the shared page.

## LearnCpp Interaction Model
- Treat `R-001 LearnCpp` as the default learner-facing reading source whenever it adequately covers the planned concept.
- Send the learner to `R-001` through curated packets in `resource_cards/`, not to the whole site by default.
- Use exact lesson links, a narrow reading order, and a clear stop condition.
- If a planned concept is not adequately covered by the current `R-001` packets, add a companion source before the phase or gate becomes learner-facing.
- Do not require a learner-facing task concept unless it is covered by the curated reading layer in this folder.
