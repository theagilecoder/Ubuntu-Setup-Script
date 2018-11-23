#! /bin/bash

# Echo command
echo -e "\e[1;32m Starting Setup... \e[0m"

# Install curl
sudo apt install curl

# Install git
echo -e "\e[1;32m Installing git... \e[0m"
sudo apt install git
git --version
git config --global user.name "Pushkar Singh"
git config --global user.email "theagilecoder@gmail.com"
echo -e "\e[1;32m Git Setup complete... \e[0m"

# Install NVM
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04#installing-using-nvm
echo -e "\e[1;32m Installing NVM... \e[0m"
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm --version
echo -e "\e[1;32m NVM Setup complete... \e[0m"

# Install Node
echo -e "\e[1;32m Installing Node... \e[0m"
nvm install node
node --version
npm --version
echo -e "\e[1;32m Node Setup complete... \e[0m"

# Install RVM
# https://gorails.com/setup/ubuntu/18.04
echo -e "\e[1;32m Installing RVM... \e[0m"
# Settings to prevent the time-consuming installation of local Ruby documentation
printf "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri\n" >> ~/.gemrc

sudo apt install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source /home/tac/.rvm/scripts/rvm
rvm -v
echo -e "\e[1;32m RVM Setup complete... \e[0m"

# Install Ruby (Use 2.5.1 for precompiled binaries)
echo -e "\e[1;32m Installing ruby... \e[0m"
rvm install 2.5.1
rvm use 2.5.1 --default
ruby -v
gem install bundler
echo -e "\e[1;32m Ruby Setup complete... \e[0m"

# Install Rails
echo -e "\e[1;32m Installing Rails... \e[0m"
gem install rails -v 5.2.1
rails -v
echo -e "\e[1;32m Rails Setup complete... \e[0m"
