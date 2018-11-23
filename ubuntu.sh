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

# Install RVM
# https://gorails.com/setup/ubuntu/18.04

# Settings to prevent the time-consuming installation of local Ruby documentation
printf "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri\n" >> ~/.gemrc

sudo apt install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# Install Ruby (Use 2.5.1 for precompiled binaries)
rvm install 2.5.3
rvm use 2.5.3 --default
ruby -v
gem install bundler

# Install Rails
gem install rails -v 5.2.1
rails -v
