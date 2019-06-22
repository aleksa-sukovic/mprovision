#!/bin/bash

# Install and update kernel headers
sudo pacman -Sy linux linux-headers

# Load VMware kernel modules
sudo modprobe -a vmw_vmci vmmon

# Start VMware services
sudo systemctl start vmware-networks
sudo systemctl enable vmware-networks

sudo systemctl start vmware-usbarbitrator
sudo systemctl enable vmware-usbarbitrator

sudo systemctl start vmware-hostd
sudo systemctl enable vmware-hostd
