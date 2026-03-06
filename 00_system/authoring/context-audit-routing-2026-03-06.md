# Context Audit Report: Routing and Status Layer

## Scope
This audit reviews the routing and status changes introduced on 2026-03-06:
- `00_system/TASK_ROUTING.md`
- `00_system/STATUS.md`
- entrypoint updates in `AGENTS.md`, `00_system/MODES.md`, `00_system/README.md`, and repo `README.md`

The goal is to test whether the new structure improves retrieval discipline and output predictability without creating unnecessary startup overhead.

## Method
This report follows `CONTEXT_AUDIT.md` with one limitation:
- the prompt audit was run in the current working chat, not in separate fresh chats

Because of that limitation, the prompt findings below should be treated as provisional behavior evidence rather than a fully clean isolation test.

## Static Footprint Check

### `Utvecklingsläge`

Before this change, the default startup set was:
- `AGENTS.md`
- `README.md`
- `00_system/README.md`
- `00_system/MODES.md`

Baseline at `HEAD` before the working-tree edits:
- default file count: `4`
- default line count: `194`

After the audit-driven simplification that made `TASK_ROUTING.md` on-demand instead of mandatory:
- default file count: `4`
- default line count: `214`

Result:
- file count: unchanged
- line count: `+20`
- interpretation: slight static regression, but much smaller than the earlier mandatory-routing version

### `Utbildningsläge`

Default startup set:
- `00_system/foundation/README.md`
- `00_system/foundation/GOALS.md`
- `00_system/foundation/RULEBOOK.md`
- `00_system/foundation/AI_TEACHER_POLICY.md`
- `00_system/foundation/GATE_RUNTIME.md`

Before and after:
- default file count: `5`
- default line count: `221`

Result:
- unchanged

### On-Demand Surfaces Added
- `00_system/STATUS.md`
- `00_system/TASK_ROUTING.md`

Interpretation:
- `STATUS.md` is intentionally on-demand and does not increase startup cost unless the prompt needs program-scope status
- `TASK_ROUTING.md` is now intentionally on-demand and should not be treated as mandatory startup context

## Prompt Audit

### Prompt 1
- mode audited: `Utvecklingsläge`
- prompt: `Vad är aktivt just nu i programmet?`
- files actually consulted:
  - `README.md`
  - `00_system/STATUS.md`
- unnecessary retrieval findings:
  - none
- quality findings:
  - `STATUS.md` gives a single explicit answer surface for `active`, `planned`, and `draft`
  - this avoids having to infer status by cross-reading repo `README.md` and Phase 1 docs

### Prompt 2
- mode audited: `Utvecklingsläge`
- prompt: `Validera Gate 2 mot reglerna.`
- files actually consulted:
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/README.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/learner/TASK.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/agent/SPEC.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/agent/EVALUATION.md`
  - `00_system/authoring/GATE_VALIDATION.md`
- unnecessary retrieval findings:
  - none
- quality findings:
  - retrieval stayed inside the gate plus `authoring/`
  - no pull from `foundation/` was needed

### Prompt 3
- mode audited: `Utbildningsläge`
- prompt: `Jag vill börja Gate 1. Vad ska jag läsa först?`
- files actually consulted:
  - `00_system/foundation/README.md`
  - `01_phase0-cpp-foundations/README.md`
  - `01_phase0-cpp-foundations/gate1-stack-heap-and-storage-basics/README.md`
  - `01_phase0-cpp-foundations/gate1-stack-heap-and-storage-basics/learner/PREP.md`
- unnecessary retrieval findings:
  - none
- quality findings:
  - retrieval stayed inside `foundation/` plus the active gate path
  - no pull from `authoring/` was needed

### Prompt 4
- mode audited: `Utbildningsläge`
- prompt: `Jag är redo för evaluation i Gate 2.`
- files actually consulted:
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/README.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/learner/TASK.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/agent/SPEC.md`
  - `01_phase0-cpp-foundations/gate2-values-references-and-parameter-passing/agent/EVALUATION.md`
- unnecessary retrieval findings:
  - none
- quality findings:
  - retrieval stayed in the active gate path
  - no pull from `authoring/` was needed for the first useful evaluation-oriented answer

## Leakage Check
- `Utvecklingsläge` prompts did not pull unnecessary `foundation/` files
- `Utbildningsläge` prompts did not pull `authoring/` files
- no cross-mode leakage was observed in the audited prompt set

## Findings
- `STATUS.md` is justified.
  - It solves a real scope-status problem with one small on-demand file.
  - It improves predictability for roadmap, rollout, and "what is live?" prompts.
- `TASK_ROUTING.md` is useful only as an on-demand routing aid.
  - It is most helpful when request classification is unclear or crosses boundaries.
  - It is not justified as mandatory startup context for every chat.
- The routing/status change does not yet prove a broad reduction in common-case retrieval.
  - For normal gate-start and gate-evaluation prompts, the benefit is mostly clarity and boundary discipline, not a smaller static footprint.

## Leakage Findings
- none in the audited prompt set

## Quality Findings
- no answer-quality regression was found in the audited prompt set
- no missing gate requirement or wrong-subfolder retrieval was found in the audited prompt set

## Final Outcome
`neutral but acceptable`

Reason:
- the development-mode static footprint grew slightly
- the education-mode static footprint stayed unchanged
- `STATUS.md` adds real value for program-scope prompts
- `TASK_ROUTING.md` became acceptable only after being reduced to on-demand use instead of mandatory startup use

## Recommended Keep / Simplify Decisions
- keep `00_system/STATUS.md`
- keep `00_system/TASK_ROUTING.md` as on-demand only
- do not add more system-layer files until a future audit shows a real retrieval or quality gap
- if more routing detail is wanted later, prefer tightening the existing file instead of creating another control document

## Verification
- `powershell -ExecutionPolicy Bypass -File .\00_system\authoring\validate-structure.ps1`
- result: `Structure check passed: no findings.`
