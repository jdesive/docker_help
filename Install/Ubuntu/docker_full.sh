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
sudo apt-get install docker-compose -y
sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
echo "Please allow a few minutes for Rancher to be aviabled at http://<SERVER_IP>:8080"
EOF