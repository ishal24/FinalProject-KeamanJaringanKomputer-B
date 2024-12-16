#!/bin/bash

# ROUTER-LT6
ip route add 192.168.9.0/24 via 192.168.6.1  # Router-LT9
ip route add 192.168.7.0/24 via 192.168.6.1  # Router-LT7
ip route add 192.168.101.0/24 via 192.168.6.1  # Client-701
ip route add 192.168.102.0/24 via 192.168.6.1  # Client-702
ip route add 192.168.103.0/24 via 192.168.6.1  # Client-703
ip route add 192.168.104.0/24 via 192.168.6.1  # Client-704
ip route add 192.168.201.0/24 via 192.168.6.1  # Client-L901
ip route add 192.168.202.0/24 via 192.168.6.1  # Client-L902