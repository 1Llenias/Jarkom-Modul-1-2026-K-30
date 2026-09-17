#!/bin/bash
apt update
apt install openssh-client -y
useradd -m -s /bin/bash mika_admin
su - mika_admin

sleep 1

ssh-keygen -t ed25519
cat .ssh/id_ed25519.pub