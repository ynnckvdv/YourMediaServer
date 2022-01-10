#/bin/bash
echo "provision has started" 
apt-get update
apt-get install -y sl speedtest-cli docker.io
docker run hello-world