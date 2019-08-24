#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
netsh advfirewall set currentprofile firewallpolicy blockinboundalways,allowoutbound
netsh advfirewall set publicprofile state on
netsh advfirewall set privateprofile state on
netsh advfirewall set allprofile state on
netsh advfirewall firewall show rule name=all
netsh advfirewall set currentprofile logging