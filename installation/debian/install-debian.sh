#!/bin/bash

# Update system and install base packages
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 
# Add the Docker repository 
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker & Docker Compose 
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io

# Add your user to run docker commands as non-privileged user
sudo usermod -aG docker $USER
newgrp docker

# Check docker version
docker version

# Download docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
