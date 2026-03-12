# Task: {{Task Title}}

## Goal
Solve a {{small / focused}} C++ problem that:
- {{goal 1}}
- {{goal 2}}
- {{goal 3}}

This is the current exercise for `Gate {{N}}: {{Display Name}}` in `Phase {{N}}: {{Display Name}}`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Work in `{{workspace path}}` and {{task prompt}}.

Use these facts, conditions, or starting observations:
- {{fact / condition 1}}
- {{fact / condition 2}}
- {{fact / condition 3}}
- {{fact / condition 4}}

Your finished program or artifact should make these required observations visible:

```text
{{required observations}}
```

## Fixed Requirements
- {{fixed requirement 1}}
- {{fixed requirement 2}}
- {{fixed requirement 3}}
- {{fixed requirement 4}}

## Allowed Freedom
- {{allowed freedom 1}}
- {{allowed freedom 2}}
- {{allowed freedom 3}}

## Constraints
- Use {{allowed file scope}}
- Compile from the terminal
- Use the baseline command for `Gate {{N}}: {{Display Name}}`
- The program must build with zero warnings
- Use {{allowed interfaces only}}

Do not introduce:
- {{disallowed item 1}}
- {{disallowed item 2}}
- {{disallowed item 3}}

## Build And Run
Run these commands from inside `workspace/`:

```powershell
{{build command}}
{{run command}}
```

## Self-Check
Use these as minimum checks before you ask for evaluation:

### Check 1: Required Observations
Sample successful output or artifact observations:

```text
{{required observations}}
```

### Check 2: Required Mechanisms
Confirm all of the following in your code or artifact:
- {{mechanism check 1}}
- {{mechanism check 2}}
- {{mechanism check 3}}
- {{mechanism check 4}}

### Check 3: Build And Warnings
Compile with the baseline command and confirm that {{build expectation}}.

You are not done yet if {{failure condition}}.

## Be Ready To Explain
Be ready to answer these in your own words:

1. {{check question 1}}
2. {{check question 2}}
3. {{check question 3}}

Also be ready to explain {{follow-up explanation requirement}}.

## Bring To Evaluation
When you ask for evaluation, bring:
- the final `{{workspace path}}`
- the exact compile command you used
- the compiler output from a successful build
- the output from at least one successful run
- short written answers to the check questions
- if you used a higher-help mode, your own explanation of what changed and the follow-up variant or check requested by the agent
