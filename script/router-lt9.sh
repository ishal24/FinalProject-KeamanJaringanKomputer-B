#!/bin/bash

# ROUTER-LT9
ip route add 192.168.6.0/24 via 192.168.9.1  # Router-LT6
ip route add 192.168.7.0/24 via 192.168.9.1  # Router-LT7
ip route add 192.168.101.0/24 via 192.168.9.1  # Client-701
ip route add 192.168.102.0/24 via 192.168.9.1  # Client-702
ip route add 192.168.103.0/24 via 192.168.9.1  # Client-703
ip route add 192.168.104.0/24 via 192.168.9.1  # Client-704
ip route add 192.168.10.0/24 via 192.168.9.1  # Server-Main