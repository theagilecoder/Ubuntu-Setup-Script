#! /bin/bash

# Install git
echo -e "\e[1;32m Installing git... \e[0m"
sudo apt install git xlip
git --version
git config --global user.name "Pushkar Singh"
git config --global user.email "theagilecoder@gmail.com"
echo -e "\e[1;32m Git Setup complete... \e[0m"

ssh-keygen -t RSA -b 4096 -C "theagilecoder@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
echo -e "\e[1;32m Public Key copied... \e[0m"
echo -e "\e[1;32m Now paste in Github... \e[0m"
