#!/bin/bash

ss -lntp | grep -E ':22|:80'
echo "pasti gaada apa apa, sekarang bakal coba jalanin sesuatu di port tsb"

apt-get update && apt-get install -y openssh-server
/etc/init.d/ssh start 2>/dev/null || service ssh start 2>/dev/null || /usr/sbin/sshd
echo "ssh configured"

apt-get install -y nginx
/etc/init.d/nginx start 2>/dev/null || service nginx start 2>/dev/null || nginx
echo "nginx configured"
sleep 1
echo "di alice lakukan"
echo "nc -zv 192.226.3.2 22"
echo "nc -zv 192.226.3.2 80"
echo "nc -zv 192.226.3.2 7777"