#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
apt-cache madison docker-ce
sudo apt-get install docker-ce=5:20.10.3~3-0~ubuntu-bionic docker-ce-cli=5:20.10.3~3-0~ubuntu-bionic containerd.io -y
sudo docker run hello-world
wget https://osm-download.etsi.org/ftp/osm-9.0-nine/install_osm.sh
chmod +x install_osm.sh
./install_osm.sh -c swarm -y
