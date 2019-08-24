tasklist
tasklist /SVC
tasklist /SVC /fi "ïmagename eq svchost.exe"
schtasks
net start
sc query
wmic service list brief
wmic service list config
wmic process list brief
wmic process list status
wmic process list memory
wmic job list brief | findstr "Running"
get-service | Where-Object { $_.Status -eq "running" }
get-process !select modules! ForeachObject{$_.modules}

set
gpresult /r
gpresult /z > c:\gpresult.txt
wmic qfe

reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Group Policy"
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Group Policy\groupmembership"
wmic startup list full
wmic ntdomain list brief


cmd.exe dir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
cmd.exe dir "%userprofile%\start menu\programs\startup"
cmd dir "C:\ProgramData\" 
cmd dir "C:\Users\%username%\appdata\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cmd dir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
cmd dir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
cmd dir "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp"

wmic startup list full
wmic ntdomain list brief

type %windir%/win.ini