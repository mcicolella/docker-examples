apt-get update
apt-get install unzip curl docker.io
service docker stop
echo manual | sudo tee /etc/init/docker.override
curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine_linux-amd64.zip >machine.zip
unzip machine.zip
rm machine.zip
mv docker-machine* /usr/local/bin
