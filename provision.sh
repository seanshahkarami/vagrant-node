#!/bin/bash -e

# setup k3s
curl -sfL https://get.k3s.io | sh -

# setup nfs
apt update && apt install -y nfs-kernel-server

mkdir -p /nfs/training-data
chown -R nobody:nogroup /nfs
# training-data is write only (users can write / read known file names but list what exists)
chmod 333 /nfs/training-data
echo '/nfs 10.31.81.0/24(rw,sync,no_subtree_check,all_squash,anonuid=1000,anongid=1000)' >> /etc/exports
exportfs -ra

# spin up kubernetes nfs volume example
kubectl create -f /vagrant/examples/nfs-volume
