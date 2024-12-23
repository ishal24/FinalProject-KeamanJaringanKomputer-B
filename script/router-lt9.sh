#!/bin/bash
# ROUTER-LT9

# routing
ip route add 192.168.10.0/24 via 192.168.9.1 dev eth0
ip route add 192.168.7.0/24 via 192.168.9.1 dev eth0
ip route add 192.168.101.0/24 via 192.168.9.1 dev eth0
ip route add 192.168.102.0/24 via 192.168.9.1 dev eth0
ip route add 192.168.103.0/24 via 192.168.9.1 dev eth0
ip route add 192.168.104.0/24 via 192.168.9.1 dev eth0