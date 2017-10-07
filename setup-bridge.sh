#!/bin/sh

sudo sed -i "s%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted$%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse%" /etc/apt/sources.list
sudo apt-get update
sudo apt install bridge-utils uml-utilities
sudo modprobe bridge tun
sudo /usr/sbin/tunctl -u ubuntu -t tap0
sudo /usr/sbin/tunctl -u ubuntu -t tap1
sudo brctl addbr br0
sudo brctl addif br0 enx00018eb85a95
sudo brctl addif br0 tap0
sudo brctl addif br0 tap1
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
sudo dhclient br0
sudo ifconfig br0 up
sudo ifconfig tap0 up
sudo ifconfig tap1 up
sudo ifconfig enx00018eb85a95 0.0.0.0 up
sudo route add default gw 192.168.1.3 br0
sudo route del -net 192.168.1.0 netmask 255.255.255.0 br0
