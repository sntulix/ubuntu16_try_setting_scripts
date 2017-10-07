#!/bin/sh
sudo add-apt-repository -y ppa:mozillateam/firefox-next
sudo echo deb http://archive.canonical.com/ubuntu xenial partner > /etc/apt/sources.list.d/xenial-partner.list
sudo apt update
sudo apt install -y firefox
sudo apt install -y adobe-flashplugin/xenial
sudo apt install -y ffmpeg
