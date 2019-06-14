#!/bin/bash

dbus-launch dconf load \
    /net/launchpad/plank/docks/ < \
    /home/aleksa/.config/plank/plank-config.ini
