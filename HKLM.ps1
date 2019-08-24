reg query "HKLM\Software\Microsoft\Active Setup\Installed Components" /s
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\Shell Folders" 
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\ShellExecuteHooks" 
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects" 
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" 
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" 
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Runonce"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\url\prefixes"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\shellserviceobjectdelayload"
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\currentversion\schedule\taskcache"

reg query "HKLM\SOFTWARE\Microsoft\Windows NT\currentversion\windows" /f Appinit_DLLs
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\currentversion\winlogon" /f Shell
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\currentversion\winlogon" /f userinit
reg query HKLM\software\classes\batfile\shell\open\command
reg query HKLM\software\policies\Microsoft\Windows\System\Scripts
reg query HKLM\software\classes\comfile\shell\open\command
reg query HKLM\SOFTWARE\Classes\exefile\shell\open\command
reg query HKLM\SOFTWARE\Classes\htafilefile\shell\open\command
reg query HKLM\SOFTWARE\Classes\piffile\shell\open\command

reg query "HKLM\SOFTWARE\wow6432node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects"
reg query "HKLM\SOFTWARE\wow6432node\Microsoft\Windows\CurrentVersion\Explorer\kindmap"
reg query "HKLM\System\CurrentControlSet\control\session manager\dos devices"
reg query "HKLM\System\CurrentControlSet\control\session manager\SubSystems"

reg query "HKLM\SYSTEM\ControlSet001\control\session manager"
reg query "HKLM\SYSTEM\ControlSet001\control\session manager\dos devices"
reg query "HKLM\SYSTEM\ControlSet001\control\session manager\SubSystems"
reg query "HKLM\SYSTEM\ControlSet001\control\session manager\knownDLLs"

reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager"
reg query "HKLM\SYSTEM\CurrentControlSet\control\storvsp"

reg query "HKLM\SYSTEM\CurrentControlSet\control\hivelist"

HKEY_LOCAL_MACHINE\software\classes\CellularAPI
HKEY_LOCAL_MACHINE\software\classes\BOOTSTRAP




HKEY_LOCAL_MACHINE\software\classes\COMSNAP.COMNSView