echo %DATE% %TIME%
hostname
systeminfo
systeminfo | findstr /B /C:"OS Version"
wmic csproduct get name
wmic bios get serialnumber
wmic computersystem list brief

whoai
net users
net localgroup administrator
net group administators
wmic rdtoggle list
wmic useraccount list
wmic group list
wmic netlogin get name, lastlogon, badpasswordcount
wmic netclient list brief
doskey /history> history.txt
netstat -e
netstat -naob
route print
arp -a
ipconfig /displaydns
netsh winhttp show proxy
ipconfig /allcompartments /all
netsh wlan show interfaes
netsh wlan show all
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections"
type %SYSTEMROOT%\system32\drivers\etc\hosts
wmic nicconfig get description,IPaddress,MACaddress
wmic netuse get name,username,connectiontype,localname
