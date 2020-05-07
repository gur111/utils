#!/bin/bash
# Exit on error
set -e

sudo apt update && sudo apt upgrade -y
sudo apt install curl wget git zsh fonts-font-awesome i3 arandr -y

# Install Google Drive Mounting thingy.
# Auto mounting is confed in the i3 config
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse


sudo snap install code --classic
sudo snap install clion --classic
wget https://www.scootersoftware.com/bcompare-4.3.4.24657_amd64.deb
sudo dpkg -i bcompare-4.3.4.24657_amd64.deb
rm bcompare-4.3.4.24657_amd64.deb
git config --global diff.tool bc3
git config --global merge.tool bc3
