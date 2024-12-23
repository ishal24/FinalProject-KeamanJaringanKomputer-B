#!/bin/bash
#ROUTER-MAIN

# ROUTING
# Rute menuju subnet Router-LT6
ip route add 192.168.10.0/24 via 192.168.6.2 dev eth1 # Subnet Server-Main

# Rute menuju subnet Router-LT7
ip route add 192.168.101.0/24 via 192.168.7.2 dev eth2 # Subnet Client-701
ip route add 192.168.102.0/24 via 192.168.7.2 dev eth2 # Subnet Client-702
ip route add 192.168.103.0/24 via 192.168.7.2 dev eth2 # Subnet Client-703
ip route add 192.168.104.0/24 via 192.168.7.2 dev eth2 # Subnet Client-704

# Rute menuju subnet Router-LT9
ip route add 192.168.201.0/24 via 192.168.9.2 dev eth3 # Subnet Client-L901
ip route add 192.168.202.0/24 via 192.168.9.2 dev eth3 # Subnet Client-L902
