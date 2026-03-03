# Task: {{Task Title}}

## Goal
Write a {{small / focused}} C++ program that:
- {{goal 1}}
- {{goal 2}}
- {{goal 3}}

This is the current exercise for `Gate {{N}}: {{Display Name}}` in `Phase {{N}}: {{Display Name}}`.

## Before You Start
Complete these first:

- [PREP.md](./PREP.md)
- the readiness dialogue with the agent

## Task
Write a program in `{{workspace path}}` that {{task prompt}}.

```text
{{required output shape}}
```

Example:

Input:

```text
{{example input}}
```

Output:

```text
{{example output}}
```

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

### Test 1
Input:

```text
{{input}}
```

Expected output:

```text
{{expected output}}
```

### Test 2
Input:

```text
{{input}}
```

Expected output:

```text
{{expected output}}
```

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
