#! /bin/bash

# Install build essential if not installed
sudo apt install build-essential
echo -e "\e[1;32m build-essential packages installed... \e[0m"

wget -O ruby-install-0.7.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.0.tar.gz
tar -xzvf ruby-install-0.7.0.tar.gz
cd ruby-install-0.7.0/
sudo make install
ruby-install -V
cd ~
rm ruby-install-0.7.0.tar.gz
echo -e "\e[1;32m ruby-install setup done... \e[0m"

# Settings to prevent the time-consuming installation of local Ruby documentation
printf "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri\n" >> ~/.gemrc
# Install latest version of Ruby
ruby-install --latest ruby
echo -e "\e[1;32m Ruby setup done... \e[0m"

wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cd ~
rm chruby-0.3.9.tar.gz
printf "\nsource /usr/local/share/chruby/chruby.sh" >> ~/.bashrc
printf "\nsource /usr/local/share/chruby/auto.sh\n" >> ~/.bashrc
echo "ruby-2.5.3" >> ~/.ruby-version
echo -e "\e[1;32m chruby setup done... \e[0m"
echo -e "\e[1;32m CLOSE & REOPEN TERMINAL \e[0m"
