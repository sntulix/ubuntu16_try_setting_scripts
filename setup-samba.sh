#!/bin/sh
sudo sed -i "s%;[homes]%[homes]%" /etc/samba/smb.conf
sudo sed -i "s%;   browseable = no%   browseable = no%" /etc/samba/smb.conf
sudo sed -i "s%;   valid users = \%S%   valid users = \%S%" /etc/samba/smb.conf
sudo apt install samba
sudo pdbedit -a ubuntu

