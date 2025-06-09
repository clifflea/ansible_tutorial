#!/bin/bash
# This script configures UFW (Uncomplicated Firewall) on a Linux system.
# It sets default policies, allows SSH access from a specific subnet.

sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw allow from 192.168.1.0/24 to any port 22 proto tcp

# Note: can't issue 'ufw enable' - requires user interaction
# Run 'ufw enable' manually to activate the firewall after configuration

echo "UFW configuration script executed successfully."