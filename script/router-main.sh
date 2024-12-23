#!/bin/bash
#ROUTER-MAIN

# routing
ip route add 192.168.10.0/24 via 192.168.6.2 dev eth1
ip route add 192.168.101.0/24 via 192.168.7.2 dev eth2
ip route add 192.168.102.0/24 via 192.168.7.2 dev eth2
ip route add 192.168.103.0/24 via 192.168.7.2 dev eth2
ip route add 192.168.104.0/24 via 192.168.7.2 dev eth2
ip route add 192.168.201.0/24 via 192.168.9.2 dev eth3
ip route add 192.168.202.0/24 via 192.168.9.2 dev eth3