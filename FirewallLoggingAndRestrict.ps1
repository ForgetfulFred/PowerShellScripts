netsh ras show authmode
netsh ras show authtype
netsh advfirewall set currentprofile settings remotemanagement disable
netsh advfirewall set currentprofile settings localconsecrules disable
netsh advfirewall set currentprofile logging droppedconnections enable
netsh advfirewall set currentprofile logging allowedconnections enable
netsh advfirewall set currentprofile logging filename "%systemroot%\system32\LogFile\Firewall\pfirewall.log"

netsh advfirewall set allprofile logging maxfilesize 32767
netsh advfirewall monitor show firewall
netsh advfirewall monitor show consec

route print
Get-Content $env:systemroot\system32\Logfiles\Firewall\pfirewall.log
