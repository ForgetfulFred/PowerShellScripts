netsh pushd interface ipv4
netsh reset
set global icmpredirects=disabled
netsh set interface interface="Ethernet 3" forwarding=enabled advertise=disabled nud=enabled ignoredefaultroutes=enabled
netsh set interface interface="Local Area Connection* 1" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Ethernet 4" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Bluetooth Network Connection" forwarding=disabled advertise=disabled nud=disabled ignoredefaultroutes=enabled
netsh set interface interface="Wi-Fi" forwarding=disabled advertise=disabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Local Area Connection* 4" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh add address name="Ethernet 4" address=192.168.137.1 mask=255.255.255.0

netsh pushd interface ipv6
netsh reset
netsh set interface interface="Ethernet 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Local Area Connection* 1" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Ethernet 4" forwarding=enabled advertise=false nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Ethernet 5" forwarding=enabled advertise=false nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Ethernet" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Ethernet 2" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Bluetooth Network Connection" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Wi-Fi" forwarding=enabled advertise=disabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Local Area Connection* 3" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set interface interface="Local Area Connection* 4" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh interface interface="Ethernet 6" forwarding=enabled advertise=enabled nud=enabled ignoredefaultroutes=disabled
netsh set pushd interface tcp
netsh reset
netsh set global rss=disabled autotuninglevel=normal congestionprovider=default ecncapability=disabled timestamps=disabled initialrto=3000 rsc=enabled nonsackrttresiliency=enabled maxsynretransmissions=2 fastopen=enabled fastopenfallback=enabled pacingprofile=off