function Get-CpuHealth {

    $CpuUsage = (Get-Counter '\Processor(_Total)\% Processor Time' -SampleInterval 1 -MaxSamples 2).CounterSamples[-1].CookedValue
    $CpuUsage = [math]::Round($CpuUsage, 0)

    if ($CpuUsage -lt 80) {
        $CpuStatus = "Healthy"
        $CpuScore = 100
    }
    elseif ($CpuUsage -lt 90) {
        $CpuStatus = "Warning"
        $CpuScore = 75
    }
    else {
        $CpuStatus = "Critical"
        $CpuScore = 50
    }

    [PSCustomObject]@{
        Name        = "CPU"
        Category    = "Performance"
        Value       = $CpuUsage
        Unit        = "%"
        Status      = $CpuStatus
        Score       = $CpuScore
        Description = "Current total CPU utilization."
    }
}