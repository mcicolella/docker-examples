#!/bin/bash

# Update system
sudo apt update

# Install a few prerequisite packages which let apt use packages over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# A the GPG key for the official Docker repository
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 
# Add the Docker repository to APT sources
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
# Update the package database with the Docker packages from the newly added repository
sudo apt update

# Install Docker Community Edition
sudo apt-get install docker-ce docker-ce-cli containerd.io
 
# Check if the Docker daemon is running
sudo systemctl status docker

# Check Docker version
sudo docker -v 
