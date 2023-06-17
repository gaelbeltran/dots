#!/usr/bin/env bash

# COLOR VARIABLES
#----------------------------
C_RED=$(tput setaf 1)
C_GREEN=$(tput setaf 2)
C_YELLOW=$(tput setaf 3)
C_RESET=$(tput sgr0)

# Printing Functions
#----------------------------
print_section() {
    echo ""
    echo "${C_YELLOW} => ${1} ${C_RESET}"
    echo "${C_YELLOW}=========================${C_RESET}"
}

print_status() {
    echo ""
    echo "${C_YELLOW} - ${1} ${C_RESET}"
}

# Set hostname
# sudo hostnamectl set-hostname workstation

# System updates
print_section "System updates"
sudo apt update -y -q
# sudo apt upgrade -y -q
# sudo apt dist-upgrade -y -q

# System software
print_section "System software"
sudo apt install build-essential libssl-dev libpng-dev -y -q
sudo apt install curl -y -q

# Virtualization
print_section "Virtualization software"
sudo apt install qemu-system libvirt-daemon-system virt-manager -y -q
