apt-get update
apt-get install unzip curl docker.io
service docker stop
echo manual | sudo tee /etc/init/docker.override
curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
