$ArrayHere = ("HKLM","HKCU","HKCR","HKU","HKCC")
Foreach ($MyList in $ArrayHere) {reg query $MyList /s | Format-List | Out-File "C:\Reg.csv"}

# Get-Process | Export-Csv -Path .\Processes.csv -NoTypeInformation
# Get-Content -Path .\Processes.csv
#"Name","SI","Handles","VM","WS","PM","NPM","Path","Parent","Company","CPU","FileVersion",