#!/bin/sh

curl -L "https://drive.usercontent.google.com/download?id=1G9zIi20ofbOgfffor-i-e7QKU3Ihe42W&export=download&confirm=t" -o nama_file.zip
apt update
apt install p7zip-full
7z x nama_file.zip