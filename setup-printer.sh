#!/bin/sh
sudo sed -i.backup_authType s% *AuthType.*%% cupsd.conf
sudo sed -i.backup_require s% *Require.*%% cupsd.conf
sudo /etc/init.d/cups restart
