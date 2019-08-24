Policy=Test
Filter=FilterList
Action=deny
Rule=
Password=HowNowBrownCow

#Impliment IPSEC local security policy
netsh ipsec static add filter filterlist=$Filter srcaddy=Any dstaddr=Any protocol=Any
netsh ipsec static add filteraction name=$Action action=negotiate
netsh ipsec static add policyname=$Policy assign=yes
netsh ipsec static add rule name=$Rule policy=$Policy filterlist=$Filter filteration=$Action contype=all active=yes psk=$Password

#allow browsing on port 80 and 443
netsh ipsec static add filteraction name=Allow action=permit
netsh ipsec static add filter filterlist=WebFilter srcaddr=Any dstadd=Any protocol=TCP dstport=80
netsh ipsec static add filter filterlist=WebFilter srcaddr=Any dstaddr=Any protocol=TCP dstport=443
netsh ipsec static add rule name=WebAllow policy=$Policy filterlist=WebFilter filteraction=Allow conntype=all activate=yes psk=$Password
netsh ipsec static set policy name=$Policy

#Create IPSEC Advance Firewall Rule, Policy and require PSK from and to any connections.
netsh advfirewall consec add rule "IPSEC" endpoint=any endpoint2=any action=requireinrequireout qmsecmethods=default

#Require IPSEC preshared key on all outgoing requests
netsh advfirewall firewall add rule name="IPSEC_Out" dir=out action=allow enable=yes profile=any localip=any remoteip=any protocol=any interfacetype=any security=authenticate

#Create rule for Browsing
netsh advfirewall firewall add rule name="Allow Outbound Port 80" dir=out localport=80 protocol=TCP action=allow

#Create a rule for DNS
netsh advfirewall firewall add rule name="Allow Outbound Port 53" dir=out localport=53 protocol=UDP action=allow

#Uncomment to Delete the IPSEC rule
#netsh advfirewall firewall delete rule name="IPSEC"