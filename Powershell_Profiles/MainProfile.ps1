

# Load Alias File
$ThisScriptPath = gci $MyInvocation.MyCommand.Path
$AliasFilename = "Alias.ps1"
$AliasFilePath = Join-Path $ThisScriptPath.Directory.FullName $AliasFilename
. $AliasFilePath