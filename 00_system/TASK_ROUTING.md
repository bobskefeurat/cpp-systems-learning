# TASK ROUTING

## Purpose
This file defines the repeatable retrieval method for the repository.
Use it after the chat mode has been chosen and after reading `MODES.md`.

It exists to keep startup context small while still making the next file choice predictable.
`MODES.md` defines what each mode means.
This file defines which files to read next for a given request.

## Startup Sequence
1. Read `AGENTS.md`.
2. If no mode has been chosen yet, ask for mode and stop.
3. Read `00_system/MODES.md`.
4. Read this file.
5. Read only the smallest file set that matches the user's request.
6. Pull in additional files only when the current task actually depends on them.

## Core Rule
Start from the narrowest entrypoint that can answer the request correctly.

Preferred order:
1. named file from the user, if one is named
2. relevant phase or gate `README.md`
3. relevant folder `README.md` or index
4. deeper policy, validation, or support files

Do not load whole subtrees by default.
Do not read both `foundation/` and `authoring/` deeply unless the task genuinely crosses that boundary.

## When To Read `STATUS.md`
Read `00_system/STATUS.md` when the request depends on any of the following:
- what is currently active in the program
- what is planned versus live
- whether a phase or gate is ready for normal use
- roadmap or rollout questions

Skip `STATUS.md` when the task is local and self-contained, such as editing one gate file or fixing one script.

## `Utvecklingsläge` Routes

| Request type | Read first | Load next only if needed | Avoid by default |
| --- | --- | --- | --- |
| General repo orientation | `README.md`, `00_system/README.md` | `00_system/STATUS.md` | deep `foundation/` |
| Current program scope or roadmap | `00_system/STATUS.md`, relevant phase `README.md` | `00_system/authoring/COURSE_PLAN.md` | gate internals |
| Create or revise a phase | `00_system/authoring/README.md`, `00_system/authoring/PHASE_GENERATION.md`, relevant phase `README.md` | `00_system/authoring/phase_blueprints/README.md`, relevant phase blueprint, `00_system/authoring/course_concepts/README.md`, `00_system/authoring/COURSE_PLAN.md`, `00_system/authoring/TASK_DESIGN.md`, `00_system/authoring/templates/` | `foundation/` |
| Validate a phase | relevant phase `README.md`, relevant phase blueprint, `00_system/authoring/PHASE_VALIDATION.md` | generated gate files, `00_system/authoring/GATE_VALIDATION.md`, `00_system/authoring/validate-structure.ps1` | broad source integration |
| Create or revise a gate | relevant phase `README.md`, relevant gate `README.md`, `00_system/authoring/GATE_STRUCTURE.md` | relevant phase blueprint, `00_system/authoring/TASK_DESIGN.md`, `00_system/authoring/templates/`, `00_system/authoring/GATE_VALIDATION.md` | unrelated phases |
| Validate a gate | relevant gate files, `00_system/authoring/GATE_VALIDATION.md` | `00_system/authoring/validate-structure.ps1` | broad course planning docs |
| Change learner-facing runtime behavior | `00_system/foundation/README.md`, relevant foundation files, affected phase or gate files | `00_system/foundation/AI_INTERACTION_PROTOCOLS.md`, `RUBRIC.md` | `authoring/` unless structure changes too |
| Resource curation or reading-policy work | `00_system/resources/RESOURCES.md`, `00_system/resources/RESOURCE_MAP.md` | specific `resource_cards/`, relevant gate `PREP.md` files | `research/` unless source review is needed |
| Research review | target file in `00_system/research/` | `00_system/authoring/COURSE_PLAN.md`, `00_system/STATUS.md` | `foundation/` |
| Repo tooling or validation script work | target script or config file | `00_system/authoring/README.md` | learner-facing gate docs |

## `Utbildningsläge` Routes

| Request type | Read first | Load next only if needed | Avoid by default |
| --- | --- | --- | --- |
| Gate start or "what should I read?" | `00_system/foundation/README.md`, relevant phase `README.md`, relevant gate `README.md`, `learner/PREP.md` | `GOALS.md`, `RULEBOOK.md`, `AI_TEACHER_POLICY.md`, `GATE_RUNTIME.md` | `authoring/` |
| Readiness dialogue | relevant phase `README.md`, gate `README.md`, `learner/PREP.md`, `agent/READINESS.md` | `AI_INTERACTION_PROTOCOLS.md` | `authoring/` |
| Task support during work | gate `README.md`, `learner/TASK.md`, relevant workspace files | `GATE_RUNTIME.md`, `AI_INTERACTION_PROTOCOLS.md` | `authoring/` |
| Evaluation | gate `README.md`, `learner/TASK.md`, `agent/SPEC.md`, `agent/EVALUATION.md` | `AI_INTERACTION_PROTOCOLS.md`, `RUBRIC.md` | `authoring/` |
| Learner-facing resource assignment | `00_system/resources/RESOURCES.md`, `RESOURCE_MAP.md`, relevant `resource_cards/` | relevant `PREP.md` or gate files | `research/` |
| Term clarification | relevant gate or foundation file | `00_system/foundation/GLOSSARY.md` | broad system docs |

## Boundary Rules
- If the user asks for repository maintenance, authoring changes, or system restructuring, use `Utvecklingsläge`.
- If the user asks for readiness, learner support, or evaluation inside a gate, use `Utbildningsläge`.
- If the prompt mixes both, start from the active mode and load the smallest cross-boundary file set needed to resolve the conflict.

## Stop Rules
Stop loading more files when all of the following are true:
1. the next action is clear
2. the governing rules for that action are identified
3. additional files would mainly repeat context instead of changing the decision

If a later step changes scope, reroute from this file instead of continuing to load adjacent documents by habit.
