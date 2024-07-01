#!/bin/bash
sudo apt-get update -y
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm install pm2 -g
sudo mkdir /srv/strapi
sudo chown -c ubuntu /srv/strapi
sudo git clone https://github.com/sharqX/strapi-terraform.git /srv/strapi
cd /srv/strapi
sudo npm install
bash create_env.sh
sudo pm2 start --name server.js
sudo pm2 save && pm2 save