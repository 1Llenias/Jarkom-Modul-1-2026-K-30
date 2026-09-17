#!/bin/bash
useradd -m -s /bin/bash mika_admin
mkdir .ssh
chmod 700 .ssh
nano .ssh/authorized_keys
echo "masukin public key nya ke authorized key ini nanti"
sleep 1
chmod 600 .ssh/authorized_keys
