#!/bin/bash

# Output colors
red='\e[1;31m%s\e[0m\n'
green='\e[1;32m%s\e[0m\n'
blue='\e[1;34m%s\e[0m\n'

# Make sure we run under sudo
if [ $(id -u) != 0 ]; then
   printf "$red" "Please run as root!"
   exit 1
fi

# Install ansible
sudo pacman -Syu
sudo pacman -S ansible

# Provision
cd "$(dirname "$0")/.."
sudo ansible-playbook playbooks/init.yml
sudo ansible-playbook playbooks/restituto.yml

# Finish provisioning of needed applications
sh ~/.config/vbox/vbox-setup.sh
sh ~/.config/vmware/vmware-setup.sh

printf "$green" "Restituto successfully provisioned Your system. Enjoy!"
