# Antigravity Pack installer (Windows PowerShell)
# Usage:
#   .\install-windows.ps1 project C:\path\to\your-project   -> skills+rules+workflows for ONE project
#   .\install-windows.ps1 global                            -> skills for ALL projects
param(
  [Parameter(Mandatory=$true)][string]$Mode,
  [string]$Target
)
$Here = Split-Path -Parent $MyInvocation.MyCommand.Path

if ($Mode -eq "project") {
  if (-not $Target) { Write-Host "Give the project path: .\install-windows.ps1 project C:\path\to\project"; exit 1 }
  New-Item -ItemType Directory -Force -Path "$Target\.agents", "$Target\.agent" | Out-Null
  Copy-Item -Recurse -Force "$Here\.agents\skills" "$Target\.agents\skills"
  Copy-Item -Recurse -Force "$Here\.agents\rules" "$Target\.agents\rules"
  Copy-Item -Recurse -Force "$Here\.agent\workflows" "$Target\.agent\workflows"
  if (-not (Test-Path "$Target\AGENTS.md")) { Copy-Item "$Here\AGENTS.md" "$Target\AGENTS.md" }
  if (-not (Test-Path "$Target\GEMINI.md")) { Copy-Item "$Here\GEMINI.md" "$Target\GEMINI.md" }
  Write-Host "Installed into $Target - open the project in Antigravity and start a new conversation."
}
elseif ($Mode -eq "global") {
  $SkillsDir = "$env:USERPROFILE\.gemini\config\skills"
  New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null
  Copy-Item -Recurse -Force "$Here\.agents\skills\*" $SkillsDir
  if (-not (Test-Path "$env:USERPROFILE\.gemini\GEMINI.md")) { Copy-Item "$Here\AGENTS.md" "$env:USERPROFILE\.gemini\GEMINI.md" }
  Write-Host "Skills installed globally in $SkillsDir - start a new conversation in Antigravity."
}
else {
  Write-Host "Usage: .\install-windows.ps1 project C:\path\to\project   OR   .\install-windows.ps1 global"
}
