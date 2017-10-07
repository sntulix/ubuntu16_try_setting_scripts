#!/bin/sh
grep "greeter-show-manual-login=true" /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
if [ $? -ne 0 ]; then echo 'set manual-login before virt install.'; exit; fi
sudo apt install qemu-kvm virt-manager
wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win_amd64.vfd
sudo passwd -d libvirt-qemu
