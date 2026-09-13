#Requires -Version 5.1

<#
.SYNOPSIS
    AdminEye - Windows system health checker.

.DESCRIPTION
    Performs basic health checks on the local Windows computer.
#>

$ComputerName = $env:COMPUTERNAME

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "              ADMINEYE v0.1" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Computer: $ComputerName"
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""