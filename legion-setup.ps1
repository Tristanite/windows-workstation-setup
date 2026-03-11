# Install Chocolatey if not installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."

    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

}

Write-Host "Installing required software..."

choco install git -y
choco install python -y
choco install vscode -y
choco install qgis -y
choco install 7zip -y
choco install discord -y
choco install dbeaver -y


Write-Host "Setup complete!"