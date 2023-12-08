param(
    $sleep = 10, #sleep time
    $interval = 10 # announcement interval
)
cls
$WShell = New-Object -ComObject "WScript.Shell"
$StartDate = Get-Date -Format 'dddd dd/MM/yyyy HH:mm (K)'
$stopwatch
try {
    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
}
catch {
    Write-Warning "Could not start stopwatch!!!"
}
Write-Host "Starting ScrollLock-toggle no-sleep routine..." -ForegroundColor Green
Write-Host "Start time: $($StartDate)" -ForegroundColor Green
$index = 0
while ($true) {
    Write-Host "< 3" -ForegroundColor Red
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Milliseconds 200
    Write-Host "<3" -ForegroundColor Red
    $WShell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Seconds $sleep
    if ($stopwatch.isRunning -and (++$index % $interval) -eq 0) {
        Write-Host "Elapsed Time: " $stopwatch.Elapsed.ToString('dd\.hh\:mm\:ss') -ForegroundColor Green
    }
}