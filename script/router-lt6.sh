#!/bin/bash
# ROUTER-LT6

# routing
ip route add 192.168.7.0/24 via 192.168.6.1 dev eth0
ip route add 192.168.9.0/24 via 192.168.6.1 dev eth0
ip route add 192.168.101.0/24 via 192.168.6.1 dev eth0
ip route add 192.168.201.0/24 via 192.168.6.1 dev eth0
ip route add 192.168.104.0/24 via 192.168.6.1 dev eth0