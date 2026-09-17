#!/bin/bash

apt update
apt install ftp acl
echo "ftp acl installed"

echo "nanti akan diminta 3 password, pertama password untuk user eiri, lalu alice, terakhir mika"
sleep 2

useradd -M eiri && passwd eiri
useradd -M alice && passwd alice
useradd -M mika && passwd mika

echo "user created"

sleep 1

mkdir -p /var/wired/data
setfacl -m u:alice:rwx /var/wired/data
setfacl -m u:mika:r-x /var/wired/data
usermod -d /var/wired/data/ alice
usermod -d /var/wired/data/ mika

echo "access list configured"

apt install vsftpd

echo "vsftpd installed"

cat << 'EOF' >> /etc/vsftpd.conf
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
userlist_enable=YES
userlist_deny=YES
userlist_file=/etc/vsftpd.user_list
EOF

echo "vsftpd configured"

`echo "eiri" > /etc/vsftpd.user_list`

echo "user black list configured"

getent passwd alice mika eiri

service vsftpd start
service vsftpd status