#!/bin/bash -e

# setup k3s
curl -sfL https://get.k3s.io | sh -

# setup nfs
apt update && apt install -y nfs-kernel-server

mkdir -p /nfs/training-data
chown -R nobody:nogroup /nfs
# training-data is write only (users can write / read known file names but list what exists)
# BUG containers can simply chmod +r and then read everything again
chmod 311 /nfs/training-data

echo '/nfs 10.31.81.0/24(rw,sync,no_subtree_check)' >> /etc/exports
exportfs -ra
