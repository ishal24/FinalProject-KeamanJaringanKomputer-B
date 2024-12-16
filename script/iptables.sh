#ROUTER-MAIN
# Flush semua aturan lama
iptables -F
iptables -t nat -F
iptables -X

# Mengaktifkan IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# NAT untuk eth0 (Internet)
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# Mengizinkan trafik dari jaringan internal ke internet
iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
iptables -A FORWARD -i eth2 -o eth0 -j ACCEPT
iptables -A FORWARD -i eth3 -o eth0 -j ACCEPT

# Mengizinkan trafik antar router di jaringan internal
iptables -A FORWARD -i eth1 -o eth2 -j ACCEPT
iptables -A FORWARD -i eth2 -o eth1 -j ACCEPT
iptables -A FORWARD -i eth2 -o eth3 -j ACCEPT
iptables -A FORWARD -i eth3 -o eth2 -j ACCEPT

#SERVER-MAIN
# Flush semua aturan lama
iptables -F
iptables -X

# Mengizinkan akses hanya dari jaringan internal
iptables -A INPUT -i eth0 -s 192.168.10.0/24 -j ACCEPT

# Menolak semua akses lain
iptables -A INPUT -j DROP

# Mengizinkan koneksi keluar dari server
iptables -A OUTPUT -o eth0 -j ACCEPT

#ROUTER-LT6, ROUTER-LT7, ROUTER-LT9
# Flush semua aturan lama
iptables -F
iptables -X

# Mengaktifkan IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Mengizinkan trafik antar segmen jaringan internal
iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT

# Mengizinkan trafik dari subnet internal ke router utama (Router-MAIN)
iptables -A FORWARD -i eth0 -o eth2 -j ACCEPT
iptables -A FORWARD -i eth2 -o eth0 -j ACCEPT

#CLIENT
# Flush semua aturan lama
iptables -F
iptables -X

# Mengizinkan trafik keluar menuju router
iptables -A OUTPUT -d 192.168.101.1 -j ACCEPT
iptables -A INPUT -s 192.168.101.1 -j ACCEPT

# Mengizinkan koneksi ke server di jaringan internal
iptables -A OUTPUT -d 192.168.10.2 -j ACCEPT
iptables -A INPUT -s 192.168.10.2 -j ACCEPT

# Menolak akses ke jaringan lain
iptables -A INPUT -j DROP
