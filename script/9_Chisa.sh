#!/bin.bash

apt update
apt install p7zip-full
curl -L "https://drive.usercontent.google.com/download?id=1tKZu0rcti4t-fXX4jtXDSKDBWzsawfoN&export=download&confirm=t" -o nama_file.zip
7z -x nama_file.zip
