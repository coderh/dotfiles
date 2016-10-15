#!/bin/bash

# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# Install vscode
wget https://az764295.vo.msecnd.net/stable/9e4e44c19e393803e2b05fe2323cf4ed7e36880e/code_1.6.1-1476373175_amd64.deb
sudo apt install -y ./code_1.6.1-1476373175_amd64.deb
rm ./code_1.6.1-1476373175_amd64.deb

# Install netease cloud music
wget http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb
sudo apt install -y ./netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb
rm ./netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb

# Install sogou pinyin
# sogou pinyin is not stable on loki

# Install add-apt-repository
# add-apt-repository is remove from official loki repo for security reasons 
sudo apt install -y software-properties-common python-software-properties

# Install tweak ppa
sudo add-apt-repository ppa:philip.scott/elementary-tweaks

# Install mpv ppa
sudo add-apt-repository ppa:mc3man/mpv-tests

# Install icon
sudo add-apt-repository ppa:numix/ppa

# Install java
sudo add-apt-repository ppa:webupd8team/java

# Install update apt list
sudo apt-get update

# Install software
sudo apt-get install -y git vim htop terminator \
elementary-tweaks mpv numix-icon-theme-circle \
oracle-java8-installer 

# Terminator
# - short cut
# - startup dimension

# Install docker
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
--recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo su -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list'
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install -y docker-engine
sudo service docker start
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker $USER
docker run hello-world

# Install docer-compose
sudo su -c 'curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version