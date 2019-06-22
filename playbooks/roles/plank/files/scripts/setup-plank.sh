#!/bin/bash

dbus-launch dconf load \
    /net/launchpad/plank/docks/ < \
    ~/.config/plank/plank-config.ini
