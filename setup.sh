#!/bin/bash

# chmod +x setup.sh

# After reboot:
# Create SSH Key
# ssh-keygen -t ed25519 -C "ryan.chung-kam-chung@mths.ca"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_ed25519
# cat ~/.ssh/id_ed25519.pub
# Copy this to GitHub Settings > SSH Keys > Add
# ssh -T git@github.com

# GitHub CLI
# gh auth login

# sudo rm -R ~/dot_files

# Updates and upgrades
sudo apt-get update -y
sudo apt-get dist-upgrade -y

# Install Neovim
sudo apt-get install neovim -y

# load GitHub CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# reboot
sudo reboot now
