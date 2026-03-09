param(
    [string]$RepoRoot = (Split-Path -Parent (Split-Path -Parent $PSScriptRoot))
)

$ErrorActionPreference = "Stop"

$findings = New-Object System.Collections.Generic.List[object]

function Add-Finding {
    param(
        [string]$Severity,
        [string]$Path,
        [string]$Message
    )

    $findings.Add([pscustomobject]@{
        Severity = $Severity
        Path = $Path
        Message = $Message
    })
}

function Get-RelativePath {
    param([string]$Path)

    $baseUri = [System.Uri]((Resolve-Path $RepoRoot).Path + [System.IO.Path]::DirectorySeparatorChar)
    $targetPath = if (Test-Path -LiteralPath $Path) {
        (Resolve-Path -LiteralPath $Path).Path
    } else {
        [System.IO.Path]::GetFullPath($Path)
    }
    $targetUri = [System.Uri]$targetPath
    $relativeUri = $baseUri.MakeRelativeUri($targetUri)
    return [System.Uri]::UnescapeDataString($relativeUri.ToString()).Replace('/', [System.IO.Path]::DirectorySeparatorChar)
}

function Get-LineNumberForHeading {
    param(
        [string[]]$Lines,
        [string]$Heading
    )

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -eq $Heading) {
            return $i + 1
        }
    }

    return $null
}

function Test-HeadingsInOrder {
    param(
        [string]$FilePath,
        [string[]]$RequiredHeadings
    )

    $relativePath = Get-RelativePath $FilePath
    $lines = Get-Content $FilePath
    $lastLineNumber = 0

    foreach ($heading in $RequiredHeadings) {
        $lineNumber = Get-LineNumberForHeading -Lines $lines -Heading $heading
        if (-not $lineNumber) {
            Add-Finding -Severity "error" -Path $relativePath -Message "Missing heading: $heading"
            continue
        }

        if ($lineNumber -lt $lastLineNumber) {
            Add-Finding -Severity "error" -Path $relativePath -Message "Heading out of order: $heading"
        }

        $lastLineNumber = $lineNumber
    }
}

function Test-FileExists {
    param([string]$FilePath)

    if (-not (Test-Path $FilePath)) {
        Add-Finding -Severity "error" -Path (Get-RelativePath $FilePath) -Message "Missing required file"
        return $false
    }

    return $true
}

function Test-PatternsAbsent {
    param(
        [string]$FilePath,
        [object[]]$Rules
    )

    $relativePath = Get-RelativePath $FilePath
    $content = Get-Content $FilePath -Raw

    foreach ($rule in $Rules) {
        if ($content -match $rule.Pattern) {
            Add-Finding -Severity $rule.Severity -Path $relativePath -Message $rule.Message
        }
    }
}

function Test-NoPlaceholders {
    param([string]$FilePath)

    $relativePath = Get-RelativePath $FilePath
    $content = Get-Content $FilePath -Raw

    if ($content -match "\{\{[^}]+\}\}") {
        Add-Finding -Severity "error" -Path $relativePath -Message "Unreplaced template placeholder found"
    }
}

$phaseReadmeHeadings = @(
    "## Purpose",
    "## What This Phase Builds",
    "## Gate Lineup",
    "## How To Use This Phase",
    "## Where To Start"
)

$gateReadmeHeadings = @(
    "## What This Gate Is",
    "## Learner Flow",
    "## Current Task",
    "## Where To Work",
    "## Build And Run",
    "## Files"
)

$prepHeadings = @(
    "## Before You Start",
    "## You Need To Explain",
    "## Read This",
    "## Stop When",
    "## Next Step"
)

$taskHeadings = @(
    "## Goal",
    "## Before You Start",
    "## Task",
    "## Constraints",
    "## Build And Run",
    "## Self-Check",
    "## Be Ready To Explain",
    "## Bring To Evaluation"
)

$readinessHeadings = @(
    "## Purpose",
    "## Core Concepts Covered",
    "## Standard Question Set",
    "## Readiness Standard",
    "## If the Learner Is Not Ready",
    "## Suggested AI Follow-Up Format",
    "## Next Step"
)

$specHeadings = @(
    "## Purpose",
    "## Current Baseline",
    "## What This Gate Covers",
    "## Required Evidence",
    "## Pass Requirements",
    "## Not Pass Conditions",
    "## Suggested Task Shape",
    "## Diagnostic Focus for the Rubric",
    "## Common Failure Modes",
    "## AI Guidance Constraints",
    "## AI Use During The Task"
)

$evaluationHeadings = @(
    "## Purpose",
    "## Gate Result",
    "## Binary Checklist",
    "## Gate Decision Rule",
    "## Rubric Snapshot",
    "## Strengths",
    "## Weakest Dimension(s)",
    "## Recommended Repetition",
    "## Next Check Question or Test Case",
    "## Resource Reminder",
    "## Notes for the Evaluator"
)

$learnerLeakRules = @(
    @{ Pattern = 'AI should'; Severity = 'error'; Message = 'Learner file contains agent-only wording (`AI should`)' },
    @{ Pattern = 'AI may not'; Severity = 'error'; Message = 'Learner file contains agent-only wording (`AI may not`)' },
    @{ Pattern = 'AI may'; Severity = 'error'; Message = 'Learner file contains agent-only wording (`AI may`)' },
    @{ Pattern = 'Use Notes For The Agent'; Severity = 'error'; Message = 'Learner-accessible content contains agent-only notes' },
    @{ Pattern = 'Notes for the Evaluator'; Severity = 'error'; Message = 'Learner file contains evaluator-only section' },
    @{ Pattern = 'Gate Decision Rule'; Severity = 'error'; Message = 'Learner file contains evaluator-only decision logic' },
    @{ Pattern = 'The learner should'; Severity = 'warning'; Message = 'Prefer direct learner-facing language (`you`, `your`) instead of `The learner should`' },
    @{ Pattern = 'RESOURCES\.md'; Severity = 'warning'; Message = 'Prefer exact resource cards or explicit reading assignments over sending the learner to `RESOURCES.md`' }
)

$resourceCardRules = @(
    @{ Pattern = 'Use Notes For The Agent'; Severity = 'error'; Message = 'Resource card contains agent-only notes but may be learner-facing' }
)

$phaseDirs = Get-ChildItem $RepoRoot -Directory | Where-Object { $_.Name -match '^\d{2}_phase\d+' }

foreach ($phaseDir in $phaseDirs) {
    $phaseReadme = Join-Path $phaseDir.FullName "README.md"
    if (Test-FileExists $phaseReadme) {
        Test-HeadingsInOrder -FilePath $phaseReadme -RequiredHeadings $phaseReadmeHeadings
        Test-NoPlaceholders -FilePath $phaseReadme
    }

    $gateDirs = Get-ChildItem $phaseDir.FullName -Directory | Where-Object { $_.Name -match '^gate\d+' }
    foreach ($gateDir in $gateDirs) {
        $gateReadme = Join-Path $gateDir.FullName "README.md"
        $prepFile = Join-Path $gateDir.FullName "learner/PREP.md"
        $taskFile = Join-Path $gateDir.FullName "learner/TASK.md"
        $readinessFile = Join-Path $gateDir.FullName "agent/READINESS.md"
        $specFile = Join-Path $gateDir.FullName "agent/SPEC.md"
        $evaluationFile = Join-Path $gateDir.FullName "agent/EVALUATION.md"
        $workspaceDir = Join-Path $gateDir.FullName "workspace"
        $solutionDir = Join-Path $gateDir.FullName "solution"

        $requiredFiles = @(
            $gateReadme,
            $prepFile,
            $taskFile,
            $readinessFile,
            $specFile,
            $evaluationFile
        )

        foreach ($file in $requiredFiles) {
            if (Test-FileExists $file) {
                Test-NoPlaceholders -FilePath $file
            }
        }

        if (-not (Test-Path $workspaceDir)) {
            Add-Finding -Severity "error" -Path (Get-RelativePath $workspaceDir) -Message "Missing required directory: workspace"
        }

        if (-not (Test-Path $solutionDir)) {
            Add-Finding -Severity "error" -Path (Get-RelativePath $solutionDir) -Message "Missing required directory: solution"
        }

        if (Test-Path $gateReadme) {
            Test-HeadingsInOrder -FilePath $gateReadme -RequiredHeadings $gateReadmeHeadings
        }

        if (Test-Path $prepFile) {
            Test-HeadingsInOrder -FilePath $prepFile -RequiredHeadings $prepHeadings
            Test-PatternsAbsent -FilePath $prepFile -Rules $learnerLeakRules
        }

        if (Test-Path $taskFile) {
            Test-HeadingsInOrder -FilePath $taskFile -RequiredHeadings $taskHeadings
            Test-PatternsAbsent -FilePath $taskFile -Rules $learnerLeakRules
        }

        if (Test-Path $readinessFile) {
            Test-HeadingsInOrder -FilePath $readinessFile -RequiredHeadings $readinessHeadings
        }

        if (Test-Path $specFile) {
            Test-HeadingsInOrder -FilePath $specFile -RequiredHeadings $specHeadings
        }

        if (Test-Path $evaluationFile) {
            Test-HeadingsInOrder -FilePath $evaluationFile -RequiredHeadings $evaluationHeadings
        }
    }
}

$resourceCards = Get-ChildItem (Join-Path $RepoRoot "00_system/resources/resource_cards") -Filter "*.md" -File
foreach ($resourceCard in $resourceCards) {
    if ($resourceCard.Name -eq "README.md") {
        continue
    }

    Test-PatternsAbsent -FilePath $resourceCard.FullName -Rules $resourceCardRules
}

if ($findings.Count -eq 0) {
    Write-Output "Structure check passed: no findings."
    exit 0
}

$sortedFindings = $findings | Sort-Object Severity, Path, Message
foreach ($finding in $sortedFindings) {
    Write-Output ("[{0}] {1}: {2}" -f $finding.Severity.ToUpperInvariant(), $finding.Path, $finding.Message)
}

$errorCount = ($findings | Where-Object { $_.Severity -eq "error" }).Count
$warningCount = ($findings | Where-Object { $_.Severity -eq "warning" }).Count

Write-Output ""
Write-Output ("Summary: {0} error(s), {1} warning(s)." -f $errorCount, $warningCount)

if ($errorCount -gt 0) {
    exit 1
}

exit 0
