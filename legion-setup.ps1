# Install Chocolatey if not installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."

    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

    # Ensure choco command works immediately
    $env:PATH += ";$env:ALLUSERSPROFILE\chocolatey\bin"
}

Write-Host "Installing required software..."

choco install `
    git `
    python `
    vscode `
    qgis `
    7zip `
    discord `
    dbeaver `
    firefox `
    google-drive `
    steam `
    googleearthpro `
    viber `
    qbittorrent `
    epicgames `
    zoom `
    microsoft-teams `
    wiztree `
    -y

Write-Host "Setup complete!"