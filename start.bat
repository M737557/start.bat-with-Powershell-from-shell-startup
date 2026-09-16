powershell.exe -ExecutionPolicy Bypass -NoExit -File "\\192.168.1.218\web\itsupport\asset.ps1"

# asset.ps1 - runs main logic every 30 minutes forever

while ($true) {
    try {
        # === Your existing script logic here ===
        Write-Host "$(Get-Date): Running asset script..."
        
        # ... your asset collection code ...
        
    } catch {
        Write-Host "Error: $_" -ForegroundColor Red
    }
    
    Write-Host "Sleeping 30 minutes..."
    Start-Sleep -Seconds 1800   # 30 minutes
}
