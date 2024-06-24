#!/bin/bash
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
sudo bash -E nodesource_setup.sh
sudo apt update && sudo apt install nodejs -y
sudo npm install -g yarn && sudo npm install -g pm2
sudo pm2 start /my-strapi-project/server.js
pm2 save && pm2 start