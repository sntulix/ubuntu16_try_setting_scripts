#!/bin/sh
# to change ram disk size, add 'ramdisk_size=n' to kernel boot parameter.
size=1280 #kilo byte
mke2fs -m 0 /dev/ram0 $size
mkdir /mnt/ram
mount /dev/ram0 /mnt/ram

