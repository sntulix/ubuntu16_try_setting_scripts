#!/bin/sh

sudo sed -i "s%XKBLAYOUT=\"[a-z][a-z]\"%XKBLAYOUT=\"jp\"%" /etc/default/keyboard
sudo service keyboard-setup restart
sudo udevadm trigger --subsystem-match=input --action=change
/usr/bin/setxkbmap jp
/usr/bin/gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp')]"

kill -9 -1
