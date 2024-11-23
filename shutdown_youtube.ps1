while ($true) {
    if (Get-Process | Where-Object { $_.MainWindowTitle -like '*YouTube - Google Chrome*' }) {
        Write-Output "YouTube is open"
	      shutdown /s /t 15
    } else {
        Write-Output "YouTube is not open"
    }
    Start-Sleep -Seconds 5
}
