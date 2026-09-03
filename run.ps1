[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

Set-Location $PSScriptRoot

function Invoke-Checked {
    param(
        [Parameter(Mandatory)]
        [string[]]$Command
    )

    $executable = $Command[0]
    $arguments = $Command | Select-Object -Skip 1
    & $executable @arguments
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed: $($Command -join ' ')"
    }
}

Invoke-Checked -Command @('git', 'pull', '--ff-only')
Invoke-Checked -Command @('docker', 'compose', 'pull')
Invoke-Checked -Command @('docker', 'compose', 'up', '--detach')

Write-Host ''
Write-Host 'Leaky Bucket Logistics CTF is ready.'
Write-Host 'Briefings:  http://localhost:8081/'
Write-Host 'Public API: http://localhost:8080/'
