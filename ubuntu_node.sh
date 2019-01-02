#! /bin/bash

# Install NVM and Node
cd ~
echo -e "\e[1;32m Installing NVM... \e[0m"
sudo apt install build-essential
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
echo -e "\e[1;32m NVM Setup complete... \e[0m"
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm --version
echo -e "\e[1;32m NVM Installed... \e[0m"
echo -e "\e[1;32m Installing Nodejs... \e[0m"
nvm install node
nvm use node
node -v
npm -v
echo -e "\e[1;32m Node Setup complete... \e[0m"
echo -e "\e[1;32m CLOSE & REOPEN TERMINAL \e[0m"
