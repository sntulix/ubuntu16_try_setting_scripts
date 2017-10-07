#!/bin/sh
directory_position=~/Documents
cd ~/
unzip $directory_position/ssh.zip
chmod 700 .ssh
chmod 600 .ssh/*
