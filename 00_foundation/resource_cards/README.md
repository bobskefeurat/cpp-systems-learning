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

## Naming Rule
- If a card exists for a curated resource, it should use the same ID as the resource.
- Example: `R-001` in `RESOURCES.md` should map to `resource_cards/R-001.md`.

## Rule
Use resource cards when a gate needs exact reading guidance.
Do not send the learner to a whole site or manual if a smaller reading packet is enough.

## Packet Structure
- A resource card may contain one or more gate-specific packets.
- Name packet sections in a consistent form, such as `## Gate 0 Packet: Compile, Run, and Basic I/O`.
- If the same resource is used by multiple gates, add a separate packet for each gate instead of mixing them into one generic reading list.
