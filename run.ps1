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

Write-Host ''
Write-Host 'Starting Leaky Bucket Logistics CTF...'
Write-Host 'Briefings:  http://localhost:8081/'
Write-Host 'Public API: http://localhost:8080/'
Write-Host 'Press Ctrl+C to stop the CTF when you are done.'
Write-Host ''

Invoke-Checked -Command @('docker', 'compose', 'up')
