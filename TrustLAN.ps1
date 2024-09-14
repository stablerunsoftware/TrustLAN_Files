try {
    # Define the URL and file path
    $url = "https://raw.githubusercontent.com/stablerunsoftware/TrustLAN_Files/main/TrustLAN_Installer.exe"
    $file = "$env:TEMP\TrustLAN_Installer.exe"

    # Download the file
    Write-Host "Downloading TrustLAN Installer..."
    Invoke-WebRequest -Uri $url -OutFile $file

    # Run the installer
    Write-Host "Running TrustLAN Installer..."
    Start-Process -FilePath $file -Wait

    # Clean up by removing the downloaded file (optional)
    Remove-Item $file -Force

    Write-Host "Installation complete."
} catch {
    # Display the error
    Write-Host "An error occurred: $_"
} finally {
    # Pause and wait for user input before closing the window
    Read-Host "Press Enter to exit"
}
