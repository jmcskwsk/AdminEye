#Requires -Version 5.1

<#
.SYNOPSIS
    AdminEye - Windows system health checker.

.DESCRIPTION
    Performs basic health checks on the local Windows computer.
#>

. "$PSScriptRoot\Checks\Get-CpuHealth.ps1"

$ComputerName = $env:COMPUTERNAME

$CpuHealth = Get-CpuHealth

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "              ADMINEYE v0.1" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Computer: $ComputerName"
Write-Host "CPU: $($CpuHealth.Value)$($CpuHealth.Unit) - $($CpuHealth.Status) ($($CpuHealth.Score)/100)"
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""