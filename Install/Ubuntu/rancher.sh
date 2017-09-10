#!/bin/sh
# Install Rancher
exec sudo -i -u docker /bin/sh - << EOF
sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
echo "Please allow a few minutes for Rancher to be aviabled at http://<SERVER_IP>:8080"
EOF