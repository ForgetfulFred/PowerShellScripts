Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

#Disable Remote Desktop
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /f /v fDenyTSConnections /t REG_DWORD /d 1

#Send NTLMv2 only. Refuse LM and NTLM
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\" /v lmcompatibilitylevel /t REG_DWORD /d 5 /f

#Restrict Anonymous Access
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v restrictanonymous /t REG_DWORD /d 1 /f

#Disable Sticky Keys
reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v Flags /t REG_SZ /d 506 /f

#Disable Toggle Keys:
reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v Flags /t REG_SZ /d Id 58 /f

#Disable IPV6
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TCPIP6\Parameters" /v DisabledComponents /t REG_DWORD /d 255 /f

#Disable Admin Shares workstations
reg.exe add "HKLM\SYSTEM\CurrentControlSets\Services\LanmanServer\Parameters" /f /v AutoShareWks /t REG_DWORD /d 0

#Disable Admin Shares SERVER
reg.exe add "HKLM\SYSTEM\CurrentControlSets\Services\LanmanServer\Parameters" /f /v AutoShareServer /t REG_DWORD /d 0
