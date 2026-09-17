#!/bin/bash

echo "masukin passwordnya wired_ghost"

useradd -M phantom_user
passwd phantom_user

apt update
apt install telnetd
ss -lnt | grep ':23'

echo 'telnet stream tcp nowait root /usr/sbin/telnetd telnetd' >> /etc/inetd.conf
service inetutils-inetd restart

sleep 1
