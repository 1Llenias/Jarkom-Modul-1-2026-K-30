#!/bin/sh

# nomor 3
cat << 'EOF' > /etc/network/interfaces
auto eth0
iface eth0 inet static
    address 192.226.3.3
    netmask 255.255.255.0
EOF
# nomor 4
echo "nameserver 8.8.8.8" >> /etc/resolv.conf