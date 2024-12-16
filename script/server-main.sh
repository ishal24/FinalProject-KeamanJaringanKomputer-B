#!/bin/bash

# ROUTING
ip route add 192.168.10.0/24 via 192.168.6.2  # Server-Main (Router-LT6)
ip route add 192.168.101.0/24 via 192.168.7.1  # Client-701 (Router-LT7)
ip route add 192.168.102.0/24 via 192.168.7.1  # Client-702 (Router-LT7)
ip route add 192.168.103.0/24 via 192.168.7.1  # Client-703 (Router-LT7)
ip route add 192.168.104.0/24 via 192.168.7.1  # Client-704 (Router-LT7)
ip route add 192.168.201.0/24 via 192.168.9.1  # Client-L901 (Router-LT9)
ip route add 192.168.202.0/24 via 192.168.9.1  # Client-L902 (Router-LT9)
