#!/bin/bash

dbus-launch dconf load \
    /org/gnome/desktop/ < \
    /home/aleksa/gnome-provisioning/gnome-desktop.ini
