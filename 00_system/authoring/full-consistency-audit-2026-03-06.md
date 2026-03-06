# Full Consistency Audit: Runtime Contract vs Repo Reality

## Scope
This audit checks whether the described behavior of the training program is reflected by the actual repository state on 2026-03-06.

It focuses on:
- governing documents in `00_system/`
- active and planned phase/gate documents
- resource-routing consistency
- actual `workspace/` starter behavior
- local link integrity

## Audit Method
The following checks were run:
- full file-surface inventory
- structure validation via `00_system/authoring/validate-structure.ps1`
- local markdown link validation outside templates
- startup and runtime-document consistency review
- gate-document consistency review
- resource-card routing review
- build verification of every current `workspace/main.cpp` with the documented baseline command

## High-Level Verdict
The repository is broadly coherent.

The described learner/agent program behavior is mostly reflected by the actual repository state.
However, it is not fully locked down yet.

Current result:
- structurally consistent
- operationally coherent
- not fully ratified

## What Matched

### Governing Runtime Contract
- The active foundation documents agree on the core runtime model:
  - readiness before task guidance
  - binary gate progression
  - remediation after `not pass`
  - curated-resource-only learner-facing references
  - controlled escalation for stronger help
- The mode split is explicit, and `foundation/`, `authoring/`, `resources/`, `research/`, and `archive/` are consistently separated by role.

### Gate Structure and Gate Runtime
- All current gate folders in the active Phase 0 path and the current Phase 1 draft gate have the expected files:
  - `README.md`
  - `learner/PREP.md`
  - `learner/TASK.md`
  - `agent/READINESS.md`
  - `agent/SPEC.md`
  - `agent/EVALUATION.md`
  - `workspace/`
- `validate-structure.ps1` passed with no findings.
- Gate `README.md`, learner task titles, and agent evaluation/spec files are aligned on gate naming and task naming.
- Readiness files use the expected 3-question minimum, with the integration gate using 5 questions as allowed.

### Resource Policy
- Learner-facing prep files point to local curated resource cards rather than broad external sites.
- No direct external URLs were found in learner markdown files.
- Resource IDs used by gates are present in `RESOURCES.md`.
- The resource layer supports the active Phase 0 path and the current Phase 1 numeric-safety draft gate.

### Build Baseline
- The documented practical baseline is consistent across root docs, gate docs, task docs, resource docs, and specs:
  - `g++` via `MSYS2 UCRT64`
  - `-std=c++20`
  - `-Wall -Wextra -Wpedantic`
- Every current `workspace/main.cpp` builds and runs under the documented baseline command.
- Starter files are scaffolds, not answer keys.

### Link Integrity
- No broken local markdown links were found outside the template files.

## Findings

### Medium
- Planning/status language is not fully normalized across the repo.
  - [README.md](../../README.md) says only Phase 0 is active.
  - [STATUS.md](../STATUS.md) says Phase 1 is `planned` and Phase 1 Gate 0 is `draft`.
  - [COURSE_PLAN.md](./COURSE_PLAN.md) says Phase 1 is the next implementation target and also describes it as learner-ready with bounded scope.
  - This is not a direct contradiction, but it is a semantic gap:
    - `active`
    - `planned`
    - `draft`
    - `learner-ready`
  - are not fully distinguished in one canonical place.
  - Practical effect: roadmap and rollout answers can still vary in tone depending on whether the agent starts from `STATUS.md` or `COURSE_PLAN.md`.

### Medium
- The live Phase 0 path still depends on gate control documents labeled `draft v0`.
  - All active Phase 0 `agent/SPEC.md` and `agent/EVALUATION.md` files still carry `draft v0` in their titles.
  - This weakens the claim that the active learner path is fully locked.
  - The behavior is coherent, but the repo still signals provisionality in the very documents that drive evaluation.

### Low
- One active gate still contains explicit provisional decisions in a live control file.
  - [gate0-compile-run-basic-io/agent/SPEC.md](../../01_phase0-cpp-foundations/gate0-compile-run-basic-io/agent/SPEC.md) contains `## Open Decisions Still Marked as Provisional`.
  - The remaining open points are small, but this means at least one active evaluation surface is not fully ratified.

### Low
- The current local workspace contains an ignored binary artifact in one gate workspace.
  - `01_phase0-cpp-foundations/gate0-compile-run-basic-io/workspace/main.exe`
  - This is not a tracked repo inconsistency because it is ignored by `.gitignore`.
  - It is still worth noting because local learner experience can differ from a clean checkout.

## What Was Not Proven
- This audit did not run fresh-chat behavioral tests of the agent across many prompt variations.
- This audit did not run full happy-path and not-pass simulations for every gate task.
- Because of that, the audit confirms repository consistency more strongly than it confirms live conversational behavior.

## Final Judgment
The repository mostly does what it says it does.

More precisely:
- the written runtime model is reflected by the actual file layout
- the gate structure supports the described learner flow
- the resource policy is actually wired into learner-facing materials
- the documented compile/run baseline works in practice

But a full "yes, completely locked and fully mirrored" claim would still be too strong today because:
- rollout-state language is not perfectly normalized
- active evaluation docs still present themselves as drafts
- one active gate still contains explicit provisional decisions

## Recommended Next Actions
1. Normalize rollout vocabulary in one place:
   - define the exact difference between `active`, `planned`, `draft`, and `learner-ready`
   - make `STATUS.md` the canonical status surface
   - make `COURSE_PLAN.md` planning-only and avoid status words there unless they match `STATUS.md`

2. Decide whether active gate control files should still be labeled `draft v0`.
   - If yes, explain what `draft v0` means in an active learner path.
   - If no, remove the draft markers from the active Phase 0 path after review.

3. Resolve the remaining provisional section in Phase 0 Gate 0.
   - Either lock the decisions
   - or move them out of the live gate spec and into authoring notes

4. If stronger proof is wanted, run a second audit pass with:
   - fresh-chat prompt tests
   - one happy-path simulation and one plausible failure simulation per active gate

## Verification Record
- `powershell -ExecutionPolicy Bypass -File .\\00_system\\authoring\\validate-structure.ps1`
  - result: `Structure check passed: no findings.`
- local markdown link check outside templates
  - result: no broken local links found
- build verification on all current `workspace/main.cpp`
  - result: all compiled and ran successfully under the documented baseline
