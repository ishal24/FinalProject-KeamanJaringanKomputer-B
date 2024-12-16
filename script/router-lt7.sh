#!/bin/bash

# ROUTER-LT7
ip route add 192.168.6.0/24 via 192.168.7.1  # Router-LT6
ip route add 192.168.9.0/24 via 192.168.7.1  # Router-LT9
ip route add 192.168.201.0/24 via 192.168.7.1  # Client-L901
ip route add 192.168.202.0/24 via 192.168.7.1  # Client-L902
ip route add 192.168.10.0/24 via 192.168.7.1  # Server-Main