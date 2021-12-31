#!/bin/bash

# Install all zsh plugins
zsh_plugins () {
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

}
# PACKAGES TO BE INSTALLED
PACKAGES="git curl zsh fzf"

# Install zsh

echo "Syncing Repo"
sudo pacman -Syyu

echo "Installing base dependencies"
sudo pacman --needed -S $PACKAGES

echo "Requesting access to change shell"
echo "ZSH is currently installed at: $(which zsh)"
chsh

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing oh-my-zsh plugins"
zsh_plugins
