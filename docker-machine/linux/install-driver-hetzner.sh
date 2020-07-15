# Download the binary (this example downloads the binary for linux amd64)
wget https://github.com/JonasProgrammer/docker-machine-driver-hetzner/releases/download/2.1.0/docker-machine-driver-hetzner_2.1.0_linux_amd64.tar.gz
tar -xvf docker-machine-driver-hetzner_2.1.0_linux_amd64.tar.gz

# Make it executable and copy the binary in a directory accessible with your $PATH
chmod +x docker-machine-driver-hetzner
cp docker-machine-driver-hetzner /usr/local/bin/
