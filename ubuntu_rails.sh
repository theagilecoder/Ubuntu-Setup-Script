#! /bin/bash

# Install Rails
echo -e "\e[1;32m Installing Rails... \e[0m"
gem install bundler
gem install rails -v 5.2.1
rails -v
echo -e "\e[1;32m Rails Setup complete... \e[0m"
