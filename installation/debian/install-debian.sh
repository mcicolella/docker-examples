#!/bin/bash

# Update system and install base packages
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Add the Docker repository to Debian 10
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Install Docker & Docker Compose on Debian 10
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
