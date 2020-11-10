#!/bin/bash -e

# install extra device modules
apt update
apt install -y linux-headers-$(uname -r) git kmod libssl-dev libelf-dev checkinstall

(
git clone https://github.com/patjak/facetimehd-firmware.git
cd facetimehd-firmware
make
make install
)

(
git clone https://github.com/patjak/bcwc_pcie.git
cd bcwc_pcie
make
make install
)

echo facetimehd >> /etc/modules
