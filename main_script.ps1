# List of Packages
$packagesList = "The,name,of,the,packages,goes,here,seperated,with,commas"

# Checking to see if Chocolatey is installed.
try{ 
    choco -v
    Write-Host "Chocolatey is installed! Proceeding..." -ForegroundColor Green
}
catch{
    Write-Host "Chocolatey not installed. Installing now..." -ForegroundColor Red
    #iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

Write-Host "Cleaning package list" -ForegroundColor Magenta
# Splits, Trims leading and trailing white-space from current string
$appsToInstall = $packagesList -split "," | foreach { "$($_.Trim())" }

foreach ($app in $appsToInstall) #Installation
{
    Write-Host "Installing $app" -ForegroundColor Green
    & choco install $app -y
}