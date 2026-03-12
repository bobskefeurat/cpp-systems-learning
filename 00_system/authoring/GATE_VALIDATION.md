# GATE_VALIDATION

## Purpose
Defines the repeatable quality-check process for newly created or heavily revised gates.

This file exists because structural completeness is not enough on its own.
A gate can pass the structure script and still be weak in concept coverage, evidencing, or evaluation design.

Use this file when:
- creating a new gate
- creating a new integration gate
- substantially changing an existing gate's task, pass criteria, or evaluation logic

## Validation Outcomes
A validation run should end in one of these states:
- approved with no findings
- approved with documented residual risk
- not ready; blocking findings must be fixed before the gate is treated as complete

## Standard Validation Sequence (v0)
Run these checks in order.

1. Structural validation
   - Run `.\00_system\authoring\validate-structure.ps1`.
   - The gate is not structurally complete until the script passes.

2. Document coherence check
   - Confirm that `README.md`, `learner/PREP.md`, `learner/TASK.md`, `agent/READINESS.md`, `agent/SPEC.md`, and `agent/EVALUATION.md` describe the same gate.
   - Confirm that task requirements live in `learner/TASK.md`.
   - Confirm that pass / not pass logic lives in `agent/SPEC.md`.
   - Confirm that the evaluation checklist in `agent/EVALUATION.md` actually checks the pass requirements from `agent/SPEC.md`.

3. Task-design check
   - Confirm that the task is a real bounded exercise or problem, not a fill-in-the-blank answer key.
   - Confirm that the learner must make at least one meaningful decision, such as:
     - choosing types, structure, or decomposition inside a bounded surface
     - debugging or repairing a broken artifact
     - explaining and justifying a tradeoff
   - Confirm that the task does not hand over the exact declaration list, final expression list, or complete code path unless that exact syntax is itself the concept being tested.
   - Confirm that any fixed requirements are clearly separated from allowed freedom.

4. Hidden prerequisite check
   - Confirm that `learner/PREP.md` and `agent/READINESS.md` prepare the learner for the concepts the task actually depends on.
   - If the task requires a concept, mechanism, or vocabulary that is not prepared or checked before task start, the gate is not ready.

5. Evidence-source check
   - For each pass requirement in `agent/SPEC.md`, identify how it can be verified:
     - code
     - compile command
     - compiler/build output
     - runtime output
     - learner explanation
     - short targeted follow-up
   - If a pass requirement cannot be verified from any reasonable evidence source, the gate must be revised.
   - Matching runtime output alone is not enough when the gate also requires a specific mechanism, code shape, invariant, or explanation.

6. Happy-path simulation
   - Create a temporary correct solution.
   - Compile it with the gate's baseline command and required warnings.
   - Run the required checks or sample runs from `learner/TASK.md`.
   - Confirm that the gate can actually be passed as written.

7. Not-pass simulation
   - Create at least one temporary plausible failure case.
   - Prefer a failure that still looks superficially correct, such as:
     - correct output with wrong mechanism
     - clean build with wrong invariant
     - correct behavior on one test but not the required set
   - Confirm that `agent/SPEC.md` and `agent/EVALUATION.md` would still produce `not pass` for that case.

8. Residual-risk note
   - If the gate still depends on code inspection or explanation for a concept that is not directly visible in output, record that as residual risk unless it is a blocking problem.
   - Residual risk is acceptable when:
     - the requirement is explicitly documented
     - the evaluator is explicitly told what to inspect
     - the gate still stays bounded and teachable

## Required Validation Questions (v0)
During validation, the reviewer should be able to answer all of these:

1. Can a learner see what the task is and where to start?
2. Is the task a real exercise/problem instead of a transcription task?
3. Can a learner become ready without hidden prerequisites?
4. Can the agent tell what evidence matters for `pass`?
5. Can a correct solution pass cleanly under the stated compile/run rules?
6. Can a superficially plausible but incorrect solution be caught reliably?
7. Does the remediation path target the smallest missing piece instead of giving vague repetition advice?

## Special Rules for Integration Gates (v0)
For a phase-ending integration gate, also confirm all of the following:

1. The task combines earlier phase concepts instead of introducing a major new topic.
2. The task is larger than a micro-gate but still finishable in a few hours across several sessions.
3. If a real-world or workplace-style context is used, it acts only as framing and does not introduce hidden requirements or extra domain knowledge.
4. The task makes multiple earlier gates visible in the same code artifact.
5. Evaluation checks both functional completion and the learner's structured explanation of how the earlier gate concepts appear in the project.
6. Remediation can target one broken subsystem or invariant instead of requiring a full restart of the whole project.

## Expected Validation Record (v0)
When reporting a validation run, include at minimum:
- structure: pass / fail
- document coherence: pass / fail
- task design: pass / fail
- hidden prerequisites: pass / fail
- evidence-source check: pass / fail
- happy-path simulation: pass / fail
- not-pass simulation: pass / fail
- findings
- residual risk

## Notes
- Temporary simulation files should be removed after validation.
- Validation is part of gate generation, not a separate optional polish step.
- If the gate changes materially, rerun the relevant validation steps instead of assuming earlier results still hold.
- Gate validation does not replace `PHASE_VALIDATION.md` when a whole phase is being generated or revised.
