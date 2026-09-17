#!/bin/bash
apt update
apt install ftp

echo "nanti diminta masukin user password, pake aja usr=alice pw=alice"
echo "jalanin put signal_alice.txt harusnya bisa"
ftp 192.226.2.2
