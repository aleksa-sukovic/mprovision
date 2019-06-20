#!/bin/bash

dbus-launch dconf load \
    /org/gnome/shell/ < \
    /home/aleksa/gnome-provisioning/gnome-shell.ini
