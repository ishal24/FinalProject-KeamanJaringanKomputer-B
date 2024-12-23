#!/bin/bash
# ROUTER-LT7

# routing
ip route add 192.168.10.0/24 via 192.168.7.1 dev eth0
ip route add 192.168.9.0/24 via 192.168.7.1 dev eth0
ip route add 192.168.201.0/24 via 192.168.7.1 dev eth0
ip route add 192.168.202.0/24 via 192.168.7.1 dev eth0