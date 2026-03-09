param(
    [Parameter(Mandatory = $true)]
    [string]$GateDir,

    [string]$SourceRelativePath = "workspace/main.cpp",

    [string]$DestinationRelativePath = "solution/main.cpp"
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot

function Get-RepoRelativePath {
    param(
        [string]$BasePath,
        [string]$TargetPath
    )

    $baseUri = [System.Uri](([System.IO.Path]::GetFullPath($BasePath).TrimEnd(
        [System.IO.Path]::DirectorySeparatorChar,
        [System.IO.Path]::AltDirectorySeparatorChar
    )) + [System.IO.Path]::DirectorySeparatorChar)
    $targetUri = [System.Uri][System.IO.Path]::GetFullPath($TargetPath)

    return [System.Uri]::UnescapeDataString(
        $baseUri.MakeRelativeUri($targetUri).ToString()
    ).Replace('/', [System.IO.Path]::DirectorySeparatorChar)
}

function Resolve-GatePath {
    param(
        [string]$BaseDir,
        [string]$RelativePath
    )

    $baseFullPath = [System.IO.Path]::GetFullPath($BaseDir).TrimEnd(
        [System.IO.Path]::DirectorySeparatorChar,
        [System.IO.Path]::AltDirectorySeparatorChar
    )
    $basePrefix = $baseFullPath + [System.IO.Path]::DirectorySeparatorChar
    $candidatePath = [System.IO.Path]::GetFullPath((Join-Path $baseFullPath $RelativePath))

    if (-not $candidatePath.StartsWith($basePrefix, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Path '$RelativePath' escapes gate directory '$BaseDir'."
    }

    return $candidatePath
}

$gatePath = if ([System.IO.Path]::IsPathRooted($GateDir)) {
    [System.IO.Path]::GetFullPath($GateDir)
} else {
    [System.IO.Path]::GetFullPath((Join-Path $repoRoot $GateDir))
}

if (-not (Test-Path -LiteralPath $gatePath -PathType Container)) {
    throw "Gate directory not found: $GateDir"
}

$sourcePath = Resolve-GatePath -BaseDir $gatePath -RelativePath $SourceRelativePath
$destinationPath = Resolve-GatePath -BaseDir $gatePath -RelativePath $DestinationRelativePath

if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
    throw "Source file not found: $SourceRelativePath"
}

$destinationDir = Split-Path -Parent $destinationPath
if (-not (Test-Path -LiteralPath $destinationDir -PathType Container)) {
    New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null
}

Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Force

$relativeDestination = Get-RepoRelativePath -BasePath $repoRoot -TargetPath $destinationPath
Write-Output "Saved solution snapshot to $relativeDestination"
