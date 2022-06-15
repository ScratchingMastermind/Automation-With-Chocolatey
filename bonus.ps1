$Token = 'Token-here'
$Username = 'Your-GitHub-username-here'
$Repo = 'Repo-of-the-name-here'
$Filename = 'Name-of-the-file-here.ps1'

# Forcing TLS encryption for the current session.
[System.Net.ServicePointManager]::SecurityProtocol = [System.NetSecurityProtocolType]::Tls12

$URI = "https://api.github.com/repos/$username/$repo/contents/$filename"

$Headers = @{
   # Current Version
    accept = "application/vnd.github.v3.raw+json"
    authorization = "Token $Token"
}

# The request
Try
{
    Write-Host "Starting Your Automation Script From Private GitHub Repo" -ForegroundColor Green
    $Script = Invoke-RestMethod -Uri $URI -Headers $Headers
    Invoke-Expression $Script
}
catch [System.Net.WebException]
{
    Write-Host "Error connecting to $Filename. Please check your file name or Repo name and try again." -ForegroundColor Red
}

Write-Host "All Done Sir. All Packages Successfully Installed From $Repo Repository. Good Bye." -ForegroundColor Green