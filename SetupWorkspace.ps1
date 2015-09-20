
# Puts Branch Info in Shell Prompt
Install-Package -Scope CurrentUser -Force posh-git

# For CLI Editing
Install-Package -Scope CurrentUser -Force PSReadline

# Install PsGet to Install custom modules from Web
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

# Install PsUrl
Install-Module PsUrl

# Install Sysinternal Tools
$TargetPath = "$env:UserProfile\Downloads\SysinternalTools.zip"
Remove-Item -Force $TargetPath
(new-object Net.WebClient).DownloadFile("https://download.sysinternals.com/files/SysinternalsSuite.zip", $TargetPath)

$TargetDir = (Join-Path "$env:UserProfile" ([IO.Path]::GetFileNameWithoutExtension($TargetPath)))
Expand-Archive -DestinationPath $TargetDir $TargetPath


