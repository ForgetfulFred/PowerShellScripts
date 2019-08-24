#Increase Size of logs
reg.exe add HKLM\Software\Polocies\Microsoft\Windows\Eventlog\Application /v MaxSize /t REG_DWORD /d 0x19000
reg.exe add HKLM\Software\Policies\Microsoft\Windows\Eventlog\Security /v MaxSize /t REG_DWORD /d 0x64000
reg.exe add HKLM\Software\Policies\Microsoft\Windows\Eventlog\System /v MaxSize /t REG_DWORD /d 0x19000

#Success or fail on all Subcategories
auditpol /set /subcategory: "Detailed File Share" /success:enable /failure:enable
auditpol /set /subcategory: "File System" /success:enable /failure:enable
auditpol /set /subcategory: "Security System Extension" /success:enable /failure:enable
auditpol /set /subcategory: "System Integrity" /success:enable /failure:enable
auditpol /set /subcategory: "Security State Change" /success:enable /failure:enable
auditpol /set /subcategory: "Other System Events" /success:enable /failure:enable
auditpol /set /subcategory: "Logon" /success:enable /failure:enable
auditpol /set /subcategory: "Logoff" /success:enable /failure:enable
auditpol /set /subcategory: "Account Lockout" /success:enable /failure:enable
auditpol /set /subcategory: "Other Logon/Logoff Events" /success:enable /failure:enable
auditpol /set /subcategory: "Network Policy Server" /success:enable /failure:enable
auditpol /set /subcategory: "Registry" /success:enable /failure:enable
auditpol /set /subcategory: "SAM" /success:enable /failure:enable
auditpol /set /subcategory: "Certification Services" /success:enable /failure:enable
auditpol /set /subcategory: "Application Generated" /success:enable /failure:enable
auditpol /set /subcategory: "Handle Manipulation" /success:enable /failure:enable
auditpol /set /subcategory: "file share" /success:enable /failure:enable
auditpol /set /subcategory: "filtering platform packet" /success:enable /failure:enable
auditpol /set /subcategory: "Other Object Access" /success:enable /failure:enable
auditpol /set /subcategory: "Detailed File Share" /success:enable /failure:enable
auditpol /set /subcategory: "Sensitive Privilege Use" /success:enable /failure:enable
auditpol /set /subcategory: "Nonsensitive Privilege Use" /success:enable /failure:enable
auditpol /set /subcategory: "Other Privlege Use" /success:enable /failure:enable
auditpol /set /subcategory: "Process Termination" /success:enable /failure:enable
auditpol /set /subcategory: "DPAPI Activity" /success:enable /failure:enable
auditpol /set /subcategory: "RPC Events" /success:enable /failure:enable
auditpol /set /subcategory: "Process Creation" /success:enable /failure:enable
auditpol /set /subcategory: "Audit Policy Change" /success:enable /failure:enable
auditpol /set /subcategory: "Authentication Policy Change" /success:enable /failure:enable
auditpol /set /subcategory: "Authorization Policy Change" /success:enable /failure:enable
auditpol /set /subcategory: "MPSSVC Rule-Level Policy Change" /success:enable /failure:enable
auditpol /set /subcategory: "Filtering Platform Policy Change" /success:enable /failure:enable
auditpol /set /subcategory: "Other Policy Change Events" /success:enable /failure:enable
auditpol /set /subcategory: "User Account Management" /success:enable /failure:enable
auditpol /set /subcategory: "Computer Account Management" /success:enable /failure:enable
auditpol /set /subcategory: "Security Group Management" /success:enable /failure:enable
auditpol /set /subcategory: "Distribution Group Management" /success:enable /failure:enable
auditpol /set /subcategory: "Application Group Management" /success:enable /failure:enable
auditpol /set /subcategory: "Account Management Events" /success:enable /failure:enable
auditpol /set /subcategory: "Other Account Management Events" /success:enable /failure:enable
auditpol /set /subcategory: "Directory Service Changes" /success:enable /failure:enable
auditpol /set /subcategory: "Detailed Directory Service Replication" /success:enable /failure:enable
auditpol /set /subcategory: "Directory Service Access" /success:enable /failure:enable
auditpol /set /subcategory: "Kerberos Service Ticket Operations" /success:enable /failure:enable
auditpol /set /subcategory: "Other Account Logon Events" /success:enable /failure:enable
auditpol /set /subcategory: "Credential Validator" /success:enable /failure:enable

#whoami
#net users 
#net localgroup administrators
#net group administrators
#WMIC.exe rdtoggle list
#WMIC.exe useraccount list
WMIC.exe group list
#WMIC.exe netlogin get name,lastlogon,badpasswordcount
