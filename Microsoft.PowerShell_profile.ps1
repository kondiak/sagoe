Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Kondiak
Import-Module -Name Terminal-Icons
Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Windows

function Get-List { & Get-ChildItem | Format-List }
function Get-Wide { & Get-ChildItem | Format-Wide }
function get-dir ($Path) { & set-location $Path }
function goToHome { & set-location 'C:\Users\BSM' }
function get-project { & set-location 'D:\project' }
function git_log { git log --all --decorate --oneline --graph }

New-alias -Name lst -Value Get-List
New-alias -Name lsw -Value Get-Wide
New-alias -Name z -Value get-dir
New-alias -Name project -Value get-project
New-alias -Name home -Value goToHome
New-alias -Name grap -Value git_log
