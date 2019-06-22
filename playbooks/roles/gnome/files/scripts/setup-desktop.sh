#!/bin/bash

dbus-launch dconf load \
    /org/gnome/ < \
    ~/gnome-provisioning/gnome-config.ini
