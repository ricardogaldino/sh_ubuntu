#!/bin/sh

# --------------------------------------------------

sudo apt update && sudo apt upgrade
sudo apt-get install apt-transport-https ca-certificates curl gnupg software-properties-common

# --------------------------------------------------

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo chmod a+r /etc/apt/keyrings/docker.gpg

# --------------------------------------------------

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# --------------------------------------------------

sudo systemctl enable docker
sudo systemctl start docker
#sudo systemctl status docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# --------------------------------------------------

sudo apt-get install docker-compose-plugin
sudo apt-get install docker-compose

# --------------------------------------------------

docker -v
docker compose version
docker run hello-world

# --------------------------------------------------

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#sudo chmod g+rwx "$HOME/.docker" -R

# --------------------------------------------------
