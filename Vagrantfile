# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.network "private_network", ip: "10.31.81.10"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    # enable usb passthrough (optional)
    # vb.customize ["modifyvm", :id, "--usb", "on"]
    # vb.customize ["modifyvm", :id, "--usbxhci", "on"]
    # VBoxManage controlvm :id webcam attach
  end

  config.vm.provision "shell", path: "provision.sh"
end

# TODO address the fact that once image paths are shared, other plugins
# could overwrite contents or delete. this may just require a staging
# dir where stuff gets put and a read only sharing dir where stuff gets
# moved to
