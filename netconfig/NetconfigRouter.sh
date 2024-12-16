#ROUTER-MAIN
# Static config for eth0 (Internet)
auto eth0
iface eth0 inet dhcp

# Static config for eth1 (Router-LT6 connection)
auto eth1
iface eth1 inet static
    address 192.168.6.1
    netmask 255.255.255.0

# Static config for eth2 (Router-LT7 connection)
auto eth2
iface eth2 inet static
    address 192.168.7.1
    netmask 255.255.255.0

# Static config for eth3 (Router-LT9 connection)
auto eth3
iface eth3 inet static
    address 192.168.9.1
    netmask 255.255.255.0

#ROUTER-LT6
# Static config for eth0 (Router-MAIN connection)
auto eth0
iface eth0 inet static
    address 192.168.6.2
    netmask 255.255.255.0
    gateway 192.168.6.1

# Static config for eth1 (Server-Main connection)
auto eth1
iface eth1 inet static
    address 192.168.10.1
    netmask 255.255.255.0

#ROUTER-LT7
# Static config for eth0 (Router-MAIN connection)
auto eth0
iface eth0 inet static
    address 192.168.7.2
    netmask 255.255.255.0
    gateway 192.168.7.1

# Static config for eth1 (Switch-701 network)
auto eth1
iface eth1 inet static
    address 192.168.101.1
    netmask 255.255.255.0

# Static config for eth2 (Switch-702 network)
auto eth2
iface eth2 inet static
    address 192.168.102.1
    netmask 255.255.255.0

# Static config for eth3 (Switch-703 network)
auto eth3
iface eth3 inet static
    address 192.168.103.1
    netmask 255.255.255.0

# Static config for eth4 (Switch-704 network)
auto eth4
iface eth4 inet static
    address 192.168.104.1
    netmask 255.255.255.0

#ROUTER-LT9
# Static config for eth0 (Router-MAIN connection)
auto eth0
iface eth0 inet static
    address 192.168.9.2
    netmask 255.255.255.0
    gateway 192.168.9.1

# Static config for eth1 (Switch-L901 network)
auto eth1
iface eth1 inet static
    address 192.168.201.1
    netmask 255.255.255.0

# Static config for eth2 (Switch-L902 network)
auto eth2
iface eth2 inet static
    address 192.168.202.1
    netmask 255.255.255.0