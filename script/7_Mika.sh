#!/bin/bash
apt update
apt install ftp

echo "nanti diminta masukin user password, pake aja usr=mika pw=mika"
echo "jalanin put signal_alice.txt harusnya gabisa karna permissionnya gaada buat write"
ftp 192.226.2.2
