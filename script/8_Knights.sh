#!/bin/bash
apt update
apt install p7zip-full
curl -L "https://drive.usercontent.google.com/download?id=1lFepK4wFmx55PnRki3NsHW-ivudSR0vg&export=download&confirm=t" -o nama_file.zip
7z -x nama_file.zip

echo "login pake alice, alice"
echo "terus put knights_report.txt"
ftp 192.226.2.2
