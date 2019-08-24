reg query "HKCU\Control Panel\Desktop"
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion"
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run"
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\run"
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\runonce"
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\runonceex"

reg query "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /f run
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\prelaunch"

reg query "HKCU\Software\Microsoft\Windows\currentversion\policies" 

reg query "HKCU\Software\Microsoft\Windows\currentversion\explorer\wordwheelquery"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\comdlg32\LastVisitedPidlMRU"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\comdlg32\LastVisitedPidlMRULegacy"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\comdlg32\opensavepidlmru"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\runmru"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\shell folders"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\explorer\user shell folders"

reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\currentversion\applets\regedit" /v lastkey
reg query "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TypedURLs"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\Control Panel\Desktop"