#!/bin/sh
sudo apt install -y bcmwl-kernel-source
sudo apt install -y b43-fwcutter
sudo modprobe -r b43 ssb
sudo modprobe b43
