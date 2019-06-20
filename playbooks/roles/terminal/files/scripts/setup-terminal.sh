#!/bin/bash

dbus-launch dconf load \
    /org/gnome/terminal/ < \
    /home/aleksa/terminal-provisioning/terminal-config.ini
