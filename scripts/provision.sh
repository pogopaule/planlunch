#! /bin/bash

# Oh My Zsh
apt-get install zsh -y
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sduo chsh -s `which zsh` vagrant
echo "cd /vagrant" >> /home/vagrant/.zshrc
sudo update-alternatives --set editor /usr/bin/vim.basic

# NodeJS
# https://stackoverflow.com/questions/18130164/nodejs-vs-node-on-ubuntu-12-04
sudo rm /usr/sbin/node
sudo ln -s /usr/bin/nodejs /usr/sbin/node

# Client
cd /vagrant/client
npm install
npm install bower
node_modules/.bin/bower install

# Server
cd /vagrant/server
sudo gem install bundler
/home/vagrant/.rbenv/bin/rbenv exec bundle install
/home/vagrant/.rbenv/bin/rbenv exec rake db:setup
