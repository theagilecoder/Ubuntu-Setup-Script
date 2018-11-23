#! /bin/bash

# Echo command
echo Starting Setup...

# Install curl
sudo apt install curl

# Install git
sudo apt install git
git --version
git config --global user.name "Pushkar Singh"
git config --global user.email "theagilecoder@gmail.com"

# Install NVM
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04#installing-using-nvm
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm --version

# Install Node
nvm install node
node --version
npm --version

