reg add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v restrictanonymoussam /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\CurrentControlSet\LanmanServer\Parameters /f /v AutoShareServer /t REG_DWORD /d 0
