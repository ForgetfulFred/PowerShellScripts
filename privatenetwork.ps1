# Change NetWorkConnection Category to Private
#Requires -RunasAdministrator
Get-NetConnectionProfile |
  Where{ $_.NetWorkCategory -ne 'Private'} |
  ForEach {
    $_
    $_|Set-NetConnectionProfile -NetWorkCategory Private -Confirm
  }