
$ThisScriptPath = gci $MyInvocation.MyCommand.Path
$NotepadPlusPlusProgram = (gp "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\notepad++.exe")."(default)"

#Launch Notepad++
Set-Alias npp $NotepadPlusPlusProgram

#Open Powershell profile in Editor
function pro { npp $Profile}

#Open Alias file in Editor
function oal {npp $ThisScriptPath}

#Get-FabricSettings alias
Set-Alias gfs Get-FabricSetting