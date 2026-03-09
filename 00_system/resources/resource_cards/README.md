# Resource Cards

## Purpose
Resource cards break a curated resource into smaller, gate-relevant reading packets.

They exist because `RESOURCES.md` answers:
- which resources are allowed
- what role they have in the system

But a learner also needs:
- exact links
- a reading order
- a short reason for each reading
- a stop condition

## Current Cards
- [R-001.md](./R-001.md)
- [R-002.md](./R-002.md)
- [R-003.md](./R-003.md)
- [R-004.md](./R-004.md)
- [R-006.md](./R-006.md)

## Naming Rule
- If a card exists for a curated resource, it should use the same ID as the resource.
- Example: `R-001` in `RESOURCES.md` should map to `resource_cards/R-001.md`.

## Rule
Use resource cards when a gate needs exact reading guidance.
Do not send the learner to a whole site or manual if a smaller reading packet is enough.
Because learner materials may link directly to these cards, each card should stay safe for learner-facing use.
Do not place agent-only notes in a card that a learner is expected to open directly.
Each exact external link in a card must be opened and content-verified before the card is treated as ready for learner-facing use.
If a stable deep link does not exist, the card should say that clearly and tell the learner which named section to find on the shared page.

## Packet Structure
- A resource card may contain one or more gate-specific or phase-specific packets.
- Name packet sections in a consistent form, such as `## Gate 0 Packet: Compile, Run, and Basic I/O` or `## Phase 1 Packet: Numeric Safety Fundamentals`.
- During phase planning, phase-level packets are acceptable before exact gate folders exist.
- If the same resource is used by multiple gates, add a separate packet for each gate instead of mixing them into one generic reading list.

## LearnCpp Rule
For `R-001 LearnCpp`, prefer an exact packet over sending the learner to a whole chapter, summary page, or site index.
