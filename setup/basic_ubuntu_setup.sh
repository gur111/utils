#!/bin/bash
# Exit on error
set -e

git config --global user.email "gur111telem@gmail.com"
git config --global user.name "Gur Telem"

sudo apt update && sudo apt upgrade -y
sudo apt install curl wget git parcellite flameshot kbdd -y

# Add Typora repo
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
sudo apt install typora -y


# Install Google Drive Mounting thingy.
# Auto mounting is confed in the i3 config
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse

# Configure parcellite
sed -i -- 's/history_key=<Ctrl><Alt>H/history_key=<Ctrl>Escape/g' ~/.config/parcellite/parcelliterc

# Install IDEs
sudo snap install code --classic
sudo snap install clion --classic

# Beyond Compare
wget https://www.scootersoftware.com/bcompare-4.3.4.24657_amd64.deb
sudo dpkg -i bcompare-4.3.4.24657_amd64.deb
rm bcompare-4.3.4.24657_amd64.deb
git config --global diff.tool bc3
git config --global merge.tool bc3

# Setup i3
../i3-config/setup.sh

# Setup zsh
../zsh/setup.sh

