#! /bin/bash

# Install git
echo -e "\e[1;32m Installing git... \e[0m"
sudo apt install git
git --version
git config --global user.name "Pushkar Singh"
git config --global user.email "theagilecoder@gmail.com"
echo -e "\e[1;32m Git Setup complete... \e[0m"
