#!/bin/bash
# ROUTER-LT6

# ROUTING
# Rute menuju subnet Router-Main
ip route add 192.168.7.0/24 via 192.168.6.1 dev eth0 # Router-LT7
ip route add 192.168.9.0/24 via 192.168.6.1 dev eth0 # Router-LT9

# Rute menuju subnet Router-LT7
ip route add 192.168.101.0/24 via 192.168.6.1 dev eth0 # Subnet Client-701
ip route add 192.168.102.0/24 via 192.168.6.1 dev eth0 # Subnet Client-702
ip route add 192.168.103.0/24 via 192.168.6.1 dev eth0 # Subnet Client-703
ip route add 192.168.104.0/24 via 192.168.6.1 dev eth0 # Subnet Client-704

# Rute menuju subnet Router-LT9
ip route add 192.168.201.0/24 via 192.168.6.1 dev eth0 # Subnet Client-L901
ip route add 192.168.202.0/24 via 192.168.6.1 dev eth0 # Subnet Client-L902
