#!/bin/bash

# Set version
DOCKER_COMPOSE_VERSION=1.29.1

# Download Docker Compose from official GitHub repository
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make the binary executable
sudo chmod +x /usr/local/bin/docker-compose
