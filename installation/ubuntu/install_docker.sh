#!/bin/bash

# Update system
sudo apt update

# Install a few prerequisite packages which let apt use packages over HTTPS
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# A the GPG key for the official Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 
# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
 
# Update the package database with the Docker packages from the newly added repository
sudo apt update
 
# Make sure you are about to install from the Docker repository instead of the default Ubuntu repository
apt-cache policy docker-ce

# Install Docker Community Edition
sudo apt install -y docker-ce
 
# Check if the Docker daemon is running
sudo systemctl status docker

# Check Docker version
sudo docker -v 
