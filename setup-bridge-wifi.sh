#!/bin/sh

sudo sed -i "s%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted$%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse%" /etc/apt/sources.list
sudo apt-get update
sudo apt install bridge-utils uml-utilities
sudo modprobe bridge tun
sudo /usr/sbin/tunctl -u ubuntu -t tap0
sudo /usr/sbin/tunctl -u ubuntu -t tap1
sudo brctl addbr br0
sudo brctl addif br0 wlp3s0
sudo brctl addif br0 tap0
sudo brctl addif br0 tap1
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
sudo dhclient br0
sudo ifconfig br0 up
sudo ifconfig tap0 up
sudo ifconfig tap1 up
sudo ifconfig wlp3s0 0.0.0.0 up
sudo route add default netmask 0.0.0.0 br0
sudo route add default gw 192.168.1.3 br0
