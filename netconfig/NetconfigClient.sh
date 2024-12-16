#SERVER-MAIN
# Static config for eth0 (Router-LT6 connection)
auto eth0
iface eth0 inet static
    address 192.168.10.2
    netmask 255.255.255.0
    gateway 192.168.10.1

#CLIENT-70X
# Static config for eth0 (Switch-701 network)
auto eth0
iface eth0 inet static
    address 192.168.101.2
    netmask 255.255.255.0
    gateway 192.168.101.1

# Static config for eth0 (Switch-702 network)
auto eth0
iface eth0 inet static
    address 192.168.102.2
    netmask 255.255.255.0
    gateway 192.168.102.1

# Static config for eth0 (Switch-703 network)
auto eth0
iface eth0 inet static
    address 192.168.103.2
    netmask 255.255.255.0
    gateway 192.168.103.1

# Static config for eth0 (Switch-704 network)
auto eth0
iface eth0 inet static
    address 192.168.104.2
    netmask 255.255.255.0
    gateway 192.168.104.1

#CLIENT-L90X
# Static config for eth0 (Switch-L901 network)
auto eth0
iface eth0 inet static
    address 192.168.201.2
    netmask 255.255.255.0
    gateway 192.168.201.1

# Static config for eth0 (Switch-L902 network)
auto eth0
iface eth0 inet static
    address 192.168.202.2
    netmask 255.255.255.0
    gateway 192.168.202.1