#!/bin/sh
sudo sed -i "s%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted$%deb http://archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse%" /etc/apt/sources.list
