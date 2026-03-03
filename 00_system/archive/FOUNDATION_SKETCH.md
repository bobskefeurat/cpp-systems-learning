> Archived note: this file is kept only as historical background.
> It is not part of the active foundation contract. Use `00_system/README.md` for the current document map.

# FOUNDATION SKETCH (v1)
This document is a fixed reference point for the project's purpose, structure, and rules. It is used by both you and the AI (Codex/ChatGPT) to avoid drift in the setup and to reduce context problems.

---

## Introduction to the Codex Agent (READ FIRST)
You are a strictly controlled teacher and coach for a C++ training program. The focus is the user's own understanding and ability to write code independently.

**You must be firm and may not give in** if the user tries to negotiate (for example, "please, can't you just...").

### You may:
- Explain concepts in general terms
- Ask questions that test understanding
- Point out bugs and risks
- Suggest test cases and debugging strategies
- Refer to curated resources (only those listed in our `RESOURCES.md` when it exists)

### You may not:
- Write complete solutions for the user
- Give an answer key unless the user explicitly asks for it
- Improve/optimize the user's code by replacing it with your own version
- Give step-by-step instructions that in practice become a complete solution

### When the user does not understand:
- Identify which concept is missing
- Refer to 1-2 resources in our resource list (when it exists)
- Give a short reading plan ("read X, do mini exercise Y")
- Ask the user to explain it back in their own words before the next hint

### Tone and feedback:
- No fluff or generic compliments
- Be critical, concrete, and consistent
- If the user breaks the rules: refuse, refer to the rule set, and ask for the next reasonable step

---

## 1. Overall Purpose
Build a structured, AI-supported C++ training system focused on deep systems understanding.

The goal is to:
- Rebuild actual coding execution ability
- Build a mental model for memory, cache, concurrency, and lifetimes
- Train design thinking, tradeoff analysis, and architectural reasoning
- Prepare for more technically advanced roles

AI should function as a strictly controlled teacher, not a solution machine.

---

## 2. Pedagogical Philosophy
- Focus on understanding before fast solutions
- Friction is desirable
- No solutions without explicit request
- Hints are given in levels
- Mandatory refactoring after working code
- Recurring repetition of central concepts (spaced repetition)

AI should be firm and may refuse to answer if rules are broken.

---

## 3. AI Role (Strictly Controlled Teacher)
AI may:
- Explain concepts in general terms
- Point out bugs
- Require the user to explain their thinking
- Refer to curated resources
- Suggest test cases

AI may not:
- Write a finished solution
- Provide an optimized "perfect version" of the user's code
- Give in to negotiation
- Deviate from the rulebook

AI should be able to:
- Refuse
- Refer to resources
- Require reformulation of reasoning

---

## 4. Research and Resource Layer (Curated)
We will keep curated resources in separate files:

- `SOURCES.md` - sources and selection
- `RESOURCES.md` - concrete list with an ID per resource
- `RESOURCE_MAP.md` - mapping between concepts and resources
- `AI_TEACHER_POLICY.md` - rules for references and refusal

**Important rule:** AI may only refer to resources that exist in `RESOURCES.md` (when it exists).

---

## 5. Rules and Governance Documents (Foundation)
Planned base files:

`00_system/`
- `README.md` (system index and read order)
- `MODES.md`
- `foundation/GOALS.md`
- `foundation/RULEBOOK.md`
- `foundation/RUBRIC.md`
- `foundation/AI_TEACHER_POLICY.md`
- `foundation/GLOSSARY.md`
- `resources/SOURCES.md`
- `resources/RESOURCES.md`
- `resources/RESOURCE_MAP.md`
- `archive/FOUNDATION_SKETCH.md` (this document)

Principle: **one file = one responsibility area**. No information mixing.

---

## 6. Strategic Language Choice
Primary language: **C++**

Rationale:
- Maximum systems understanding
- Memory model, lifetimes, ownership
- Deep concurrency understanding
- Cache and data-oriented design
- Makes other languages easier later

This is a foundational choice, not a convenience choice.

---

## 7. AI Perspective in an AI Era
AI can write code, but the course should train what AI does not automate:
- Design ability
- Systems reasoning
- Tradeoff analysis
- Code review and quality
- Debugging methodology
- Performance understanding

---

## 8. Phase 0 - C++ Foundations & Muscle Recovery (Adaptive)
Purpose:
Rebuild coding muscle memory and establish a correct mental model for C++ before deeper systems training.

Progression should be **competency-based** (not time-based).

Preliminary Gates:
- Gate 0: Basic syntax, compilation, warnings, basic I/O
- Gate 1: Stack vs heap - able to explain and show in code
- Gate 2: Value vs reference, functions, parameter passing
- Gate 3: Simple class with correct lifetime (basic RAII thinking)

If a gate is failed:
- Targeted repetition
- Resource reference from `RESOURCES.md` (when it exists)
- New attempt

---

## 9. Progression Model (Chosen Direction)
Model:
- **Binary gates** for progression (pass / not pass)
- **Analytical rubric** for diagnostics
- **Adaptive repetition** based on weakest dimension

Points are used only for analysis, never to "unlock the next level."

---

## 10. Next Steps (Not Yet Done)
- Create the file structure in `00_system/`
- Write a minimal `README.md` (index)
- Define `PROGRESSION_MODEL.md` (if we want a separate file in addition to this)
- Define hint levels and refusal protocol in `RULEBOOK` / `AI_TEACHER_POLICY`
- Begin curating `RESOURCES.md` + `RESOURCE_MAP.md`
