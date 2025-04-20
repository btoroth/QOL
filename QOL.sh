#!/bin/bash

# Quality-of-Life Improvements Script

# Update and upgrade the system
echo "[*] Updating and upgrading packages..."
sudo apt update && sudo apt upgrade -y

# Install some handy tools
echo "[*] Installing useful tools..."
sudo apt install -y htop curl git vim tree net-tools neofetch

# Enable colorful prompt
echo "[*] Enabling colorful bash prompt..."
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc

# Add some aliases
echo "[*] Adding useful aliases..."
cat << 'EOF' >> ~/.bashrc

# QoL Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias ..='cd ..'
alias ...='cd ../..'
alias update='sudo apt update && sudo apt upgrade -y'
alias please='sudo $(history -p !!)'
EOF

# Apply changes
echo "[*] Applying changes..."
source ~/.bashrc

# Display system info on login
echo "[*] Setting up neofetch on login..."
echo "neofetch" >> ~/.bashrc
