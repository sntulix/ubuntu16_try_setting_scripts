#!/bin/sh
# In 16.04.5 live, no wl in local repo.
sudo apt install -y bcmwl-kernel-source
sudo apt install -y b43-fwcutter
sudo modprobe -r b43 ssb
sudo modprobe b43
