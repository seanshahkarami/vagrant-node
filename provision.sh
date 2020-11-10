#!/bin/bash -e

# setup k3s
curl -sfL https://get.k3s.io | sh -

# setup nfs
apt update && apt install -y nfs-kernel-server
mkdir -p /nfs && chown nobody:nogroup /nfs
echo '/nfs 10.31.81.0/24(rw,sync,no_subtree_check)' >> /etc/exports
exportfs -ra
