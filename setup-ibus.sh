#!/bin/sh

sudo apt install -y ibus-anthy
value=`/usr/bin/gsettings get org.gnome.desktop.input-sources sources | sed 's%.*\[\(.*\)\]%\1%' | sed 's%)\(, \)(%) (%' | sed "s%.*%& ('ibus', 'anthy')%" | sed 's%)\( \)(%), (%g' | sed 's%.*%[&]%'`
/usr/bin/gsettings set org.gnome.desktop.input-sources sources "$value"

kill -9 -1
