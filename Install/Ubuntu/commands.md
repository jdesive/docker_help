# Installing Docker, Docker-Compose, and Rancher
Here are the commands step-by-step, to install docker, docker-compose, and rancher under a user named "docker" on Ubuntu.

## Prerequisites 

### Update Ubuntu
* `$ sudo apt-get update`
* `$ sudo apt-get upgrade`

### Create "docker" user
* `$ sudo adduser docker`
* `$ sudo usermod -aG sudo docker`

### Switch to "docker" user
* `$ su docker`

## Docker

### Docker engine
* `$ sudo curl https://get.docker.com | sudo sh`

### Docker-Compose (Optional)
* `$ sudo apt-get install docker-compose -y`

### Test Docker 
* `$ docker run hello-world`

## Rancher

Note: Make sure you are logged in to the "docker" user  
* `sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server`

[Learn more](http://rancher.com/docs/rancher/v1.6/en/installing-rancher/installing-server/#launching-rancher-server---single-container-non-ha)