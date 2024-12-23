#!/bin/bash
# ROUTER-LT9

# ROUTING
# Rute menuju subnet Router-Main
ip route add 192.168.6.0/24 via 192.168.9.1 dev eth0 # Router-LT6
ip route add 192.168.7.0/24 via 192.168.9.1 dev eth0 # Router-LT7

# Rute menuju subnet Router-LT6
ip route add 192.168.10.0/24 via 192.168.9.1 dev eth0 # Subnet Server-Main

# Rute menuju subnet Router-LT7
ip route add 192.168.101.0/24 via 192.168.9.1 dev eth0 # Subnet Client-701
ip route add 192.168.102.0/24 via 192.168.9.1 dev eth0 # Subnet Client-702
ip route add 192.168.103.0/24 via 192.168.9.1 dev eth0 # Subnet Client-703
ip route add 192.168.104.0/24 via 192.168.9.1 dev eth0 # Subnet Client-704
