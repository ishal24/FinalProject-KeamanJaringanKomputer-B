#!/bin/bash
# ROUTER-LT7

# ROUTING
# Rute menuju subnet Router-Main
ip route add 192.168.6.0/24 via 192.168.7.1 dev eth0 # Router-LT6
ip route add 192.168.9.0/24 via 192.168.7.1 dev eth0 # Router-LT9

# Rute menuju subnet Router-LT6
ip route add 192.168.10.0/24 via 192.168.7.1 dev eth0 # Subnet Server-Main

# Rute menuju subnet Router-LT9
ip route add 192.168.201.0/24 via 192.168.7.1 dev eth0 # Subnet Client-L901
ip route add 192.168.202.0/24 via 192.168.7.1 dev eth0 # Subnet Client-L902
