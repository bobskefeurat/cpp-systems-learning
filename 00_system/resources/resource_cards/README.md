# Resource Cards

## Purpose
Resource cards break a curated resource into smaller, learner-safe reading packets.

They exist because `RESOURCES.md` answers:
- which resources are allowed
- what role they have in the system

But a learner also needs:
- exact links
- a reading order
- a short reason for each reading

## Current Structure
- Top-level `R-###.md` files are stable resource indexes.
- Phase folders contain the actual learner-facing packets for that phase.

Current phase folders:
- [01_phase0-cpp-foundations](./01_phase0-cpp-foundations/README.md)
- [02_phase1-core-language-and-object-model](./02_phase1-core-language-and-object-model/README.md)

Current resource indexes:
- [R-001.md](./R-001.md)
- [R-002.md](./R-002.md)
- [R-003.md](./R-003.md)
- [R-004.md](./R-004.md)
- [R-006.md](./R-006.md)

## Naming Rule
- If a phase-local card exists for a curated resource, it should use the same ID as the resource inside that phase folder.
- The top-level `R-###.md` file is the stable index for that resource across phases.
- Example: `R-001` in `RESOURCES.md` maps to `resource_cards/R-001.md`, and the Phase 0 packet lives at `resource_cards/01_phase0-cpp-foundations/R-001.md`.

## Rule
Use phase-local cards when a gate needs exact reading guidance.
Do not send the learner to a whole site or manual if a smaller reading packet is enough.
Because learner materials may link directly to these cards, each phase-local card should stay safe for learner-facing use.
Do not place agent-only notes in a card that a learner is expected to open directly.
Each exact external link in a card must be opened and content-verified before the card is treated as ready for learner-facing use.
If a stable deep link does not exist, the card should say that clearly and tell the learner which named section to find on the shared page.
Stop conditions belong in the relevant `PREP.md`, not in the resource card.

## Packet Structure
- Organize learner-facing packets first by phase folder, then by resource ID.
- Keep the top-level `R-###.md` file as a short index, not as the place where all phase content accumulates.
- Name packet sections in a consistent form, such as `## Gate 0 Packet: Compile, Run, and Basic I/O` or `## Phase 1 Packet: Numeric Safety Fundamentals`.
- During phase planning, phase-level packets are acceptable before exact gate folders exist.
- If the same resource is used by multiple gates in one phase, add a separate packet section for each gate instead of mixing them into one generic reading list.

## LearnCpp Rule
For `R-001 LearnCpp`, prefer an exact phase-local packet over sending the learner to a whole chapter, summary page, or site index.
