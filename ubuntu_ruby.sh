#! /bin/bash

# Install dependencies
sudo apt install curl gnupg2

# Install rvm
echo -e "\e[1;32m Installing RVM... \e[0m"
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm -v
echo -e "\e[1;32m RVM Installed... \e[0m"

# Install ruby
# For pre compiled rubies see - https://rvm.io/binaries/ubuntu/18.04/x86_64/
echo -e "\e[1;32m Installing Ruby... \e[0m"
rvm install 2.5.1
rvm use 2.5.1 --default
ruby -v
echo -e "\e[1;32m Ruby Installed... \e[0m"

# Settings to prevent the time-consuming installation of local Ruby documentation
printf "gem: --no-document\n" >> ~/.gemrc

# Update RubyGems
echo -e "\e[1;32m Updating RubyGems... \e[0m"
gem update --system
gem -v
echo -e "\e[1;32m Updated RubyGems... \e[0m"

# Install Bundler
gem install bundler

# Install Rails
gem install rails

echo -e "\e[1;32m CLOSE & REOPEN TERMINAL \e[0m"
