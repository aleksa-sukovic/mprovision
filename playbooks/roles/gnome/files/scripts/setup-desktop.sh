#!/bin/bash

dbus-launch dconf load \
    /org/gnome/ < \
    /home/aleksa/gnome-provisioning/gnome-config.ini
