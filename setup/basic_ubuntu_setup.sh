#!/bin/bash
# Exit on error
set -e

sudo apt update && sudo apt upgrade
sudo apt install curl wget git zsh
wget https://www.scootersoftware.com/bcompare-4.3.4.24657_amd64.deb
sudo dpkg -i bcompare-4.3.4.24657_amd64.deb
rm bcompare-4.3.4.24657_amd64.deb
git config --global diff.tool bc3
git config --global merge.tool bc3
