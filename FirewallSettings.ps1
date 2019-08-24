#========================
# Interface configuration
#========================
pushd interface


popd
# End of interface configuration



# ----------------------------------
# IPHTTPS Configuration
# ----------------------------------
pushd interface httpstunnel

reset


popd
# End of IPHTTPS configuration



# ----------------------------------
# IPv4 Configuration
# ----------------------------------
pushd interface ipv4

reset
set global icmpredirects=enabled
set interface interface="VirtualBox Host-Only Network" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Npcap Loopback Adapter" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Wi-Fi 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 1" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="WiFi" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="WiFi 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 12" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 13" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="vEthernet (Default Switch)" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
add address name="VirtualBox Host-Only Network" address=192.168.53.1 mask=255.255.255.0
add address name="Local Area Connection* 3" address=192.168.137.1 mask=255.255.255.0
add address name="vEthernet (Default Switch)" address=172.17.215.193 mask=255.255.255.240


popd
# End of IPv4 configuration



# ----------------------------------
# IPv6 Configuration
# ----------------------------------
pushd interface ipv6

reset
set interface interface="Local Area Connection* 5" forwarding=disabled advertise=disabled mtu=1280 metric=0 siteprefixlength=0 nud=disabled routerdiscovery=disabled managedaddress=disabled otherstateful=disabled weakhostsend=disabled weakhostreceive=disabled ignoredefaultroutes=disabled advertisedrouterlifetime=0 advertisedefaultroute=disabled currenthoplimit=0 forcearpndwolpattern=disabled enabledirectedmacwolpattern=disabled ecncapability=ecndisabled rabaseddnsconfig=disabled dhcpstaticipcoexistence=disabled
set interface interface="Wi-Fi" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="VirtualBox Host-Only Network" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Npcap Loopback Adapter" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Wi-Fi 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 1" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="WiFi" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="WiFi 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Ethernet 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 12" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="Local Area Connection* 13" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
set interface interface="vEthernet (Default Switch)" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled


popd
# End of IPv6 configuration



# ----------------------------------
# ISATAP Configuration
# ----------------------------------
pushd interface isatap



popd
# End of ISATAP configuration



# ----------------------------------
# 6to4 Configuration
# ----------------------------------
pushd interface 6to4

reset



popd
# End of 6to4 configuration



# ----------------------------------
# ISATAP Configuration
# ----------------------------------
pushd interface isatap



popd
# End of ISATAP configuration


#========================
# Port Proxy configuration
#========================
pushd interface portproxy

reset


popd

# End of Port Proxy configuration



# ----------------------------------
# TCP Configuration
# ----------------------------------
pushd interface tcp

reset

set global rss=enabled autotuninglevel=normal congestionprovider=default ecncapability=disabled timestamps=disabled initialrto=1000 rsc=enabled nonsackrttresiliency=disabled maxsynretransmissions=4 fastopen=enabled fastopenfallback=enabled hystart=enabled pacingprofile=off


popd
# End of TCP configuration



# ----------------------------------
# Teredo Configuration
# ----------------------------------
pushd interface teredo
set state type=disabled servername=win1901.ipv6.microsoft.com. servervirtualip=0.0.0.0



popd
# End of Teredo configuration



# ----------------------------------
# 6to4 Configuration
# ----------------------------------
pushd interface 6to4

reset



popd
# End of 6to4 configuration


# ------------------------------------
# Bridge configuration (not supported)
# ------------------------------------

# ------------------------------------
# End of Bridge configuration
# ------------------------------------

The 'netsh advfirewall dump' command is not implemented in this version
of Windows. Instead, use the 'netsh advfirewall export' command to write
the current Windows Defender Firewall with Advanced Security configuration from
the current policy store to a file on disk. You can then use 'netsh
advfirewall import' to read the file and load it into another policy
store, such as a Group Policy object or the current policy store on
another computer. To set the current policy store, use the 'netsh
advfirewall set store' command.
For more information about the commands in the netsh advfirewall context,
see Netsh Commands for Windows Defender Firewall with Advanced Security at
https://go.microsoft.com/fwlink/?linkid=111237.
# ----------------------------------------
# Wired LAN Configuration
# ----------------------------------------
pushd lan


popd

# End of Wired LAN Configuration.


Mobile Broadband configuration dump is not supported


# -----------------------------------------
# Remote Access Configuration
# -----------------------------------------
pushd ras




popd

# End of Remote Access configuration.




# -----------------------------------------
# Remote Access Diagnostics Configuration
# -----------------------------------------
pushd ras diagnostics

set rastracing component = * state = enabled

set modemtracing state = enabled

set cmtracing state = enabled

set securityeventlog state = enabled



popd

# End of Remote Access Diagnostics Configuration.




# -----------------------------------------
# Remote Access AAAA Configuration
# -----------------------------------------
pushd ras aaaa


popd

# End of Remote Access AAAA configuration.


# Routing Configuration
pushd routing
reset
popd
# IP Configuration
pushd routing ip
resetThe specified protocol identifier is not known to the router.
The specified protocol identifier is not known to the router.
No more data is available.



# ----------------------------------
# DNS Proxy configuration
# ----------------------------------
pushd routing ip dnsproxy
uninstall
No more data is available.



# ----------------------------------
# IGMP Configuration
# ----------------------------------
pushd routing ip igmp
uninstall
No more data is available.



popd
# End of IGMP configuration



# ----------------------------------
# NAT configuration
# ----------------------------------
pushd routing ip nat
uninstall
No more data is available.



# ----------------------------------
# DHCP Relay Agent configuration
# ----------------------------------
pushd routing ip relay
uninstall


popd
# End of DHCP Relay configuration



# ----------------------------------
# RIP configuration
# ----------------------------------
pushd routing ip rip
uninstall


popd
# End of RIP configuration



# ----------------------------------
# Router Discovery Configuration
# ----------------------------------
pushd routing ip routerdiscovery
uninstall


popd


# ----------------------------------
# DHCP Allocator Configuration
# ----------------------------------
pushd routing ip autodhcp
uninstall
No more data is available.

# IPv6 Configuration
pushd routing ipv6No more data is available.



# ----------------------------------
# DHCPv6 Relay Agent configuration
# ----------------------------------
pushd routing ipv6 relayv6
uninstall


popd
# End of DHCPv6 Relay configuration



# -----------------------------------------------------------------------
# Remote Access Demand Dial Configuration
# -----------------------------------------------------------------------
# This script is not guaranteed to work across machines with different
# Physical Demand Dial devices like Modems. Before executing this script,
# all these devices should be installed with same name and on same port
# -----------------------------------------------------------------------
# Known issues and limitations :
# 1. The user needs to set the password for dial out credentials either here
# in the script for every interface enumerated below or later on using the
# MMC or "ro demanddial set credentials" command.
# 2. The user needs to manually set the EAP settings like PEAP or installing
# Smartcard or other Certificates on the machine

pushd ro demanddial



# -----------------------------------------
# WinHTTP Proxy Configuration
# -----------------------------------------
pushd winhttp

reset proxy

popd

# End of WinHTTP Proxy Configuration

# ----------------------------------------
# Wireless LAN configuration
# ----------------------------------------
pushd wlan

# Allow filter list
# ----------------------------------------


# Block filter list
# ----------------------------------------
