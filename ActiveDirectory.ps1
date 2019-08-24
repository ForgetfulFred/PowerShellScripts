BADFILE=%SYSTEMROOT%\System32\config\SAM

#Get and force new polocies
gpupdate /forcegpupdate 
gpupdate /sync

#Audit Success failure for Matt
auditpol.exe /set /user:Matt /category:"Detailed Tracking" /include /success:enable /failure:enable

#Create an organization and move infected users and machines
$BADFILE OU QuarantineOU

#Move AD user object into New Group
#dsmbd

#Disable AD
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisallowRun /t REG_DWORD /d "00000001" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\DisallowRun" /v $BADFILE /t REG_SZ /d $BADFILE /f