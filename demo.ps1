#List of Packages
$packagesList = "brave,deezer,notepadplusplus,discord,7zip,vscodium"

#Checking if Chocolatey is installed, if not it install.
if ([string]::IsNullOrWhiteSpace($packagesList) -eq $false)
{
    try{
        choco config get cacheLocation
    }catch{
        Write-Output "Chocolatey not installed. Installing now"
        iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    }
}

if ([string]::IsNullOrWhiteSpace($packagesList) -eq $false) #Checks if package list is empty
{
    Write-Host "Cleaning List"
    # Splits and Trims leading and trailing white-space from current string
    $appsToInstall = $packagesList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall) #Installation part
    {
        Write-Host "Installing $app"
        & choco install $app -y
    }
}
