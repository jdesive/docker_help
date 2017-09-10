#!/bin/sh

# Update os
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install curl -y

# Add docker user
sudo adduser --gecos "docker" docker
sudo usermod -aG sudo docker 

# Install
exec sudo -i -u docker /bin/sh - << EOF
curl https://get.docker.com | sudo sh
docker
docker run hello-world
EOF