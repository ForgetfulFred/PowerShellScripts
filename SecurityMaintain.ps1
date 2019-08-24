#Disable anon enum of SAM accounts
reg.exe add HKLM\SYSTEM\CurrentControlSet\Lsa /v restrictanonymous sam /t REG_DWORD /d 1 /f

#Remove Hashes to prevent Passing the hash
reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /1 /v NoLMHash /t REG_DWORD /d 1

#Disable REGEDIT
reg.exe add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f

#Disable IE PWD Cache
reg.exe add HKCU\Software\Microsoft\Windows\CurrentVersion\Internet\Settings /v DisablePasswordCaching /t REG_DWORD /d 1 /f

#Don not Run the run-once list
reg.exe add HKLM\Software\Microsoft\Windows\Current\Version\Policies\Explorer /v DisableLocalMachineRunOnce /t REG_DWORD /d 1

#require UAC
reg.exe add HKLM\Software\Microsoft\Windows\Current\Version\Policies\System /v EnableLUA /t REG_DWORD /d 1 C:\PerfLogs
