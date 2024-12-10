#!/bin/bash

# clone kiamol repo
git clone https://github.com/sixeyed/kiamol.git ../kiamol

# install ansible
sudo apt update -y
sudo apt install software-properties-common wget
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# install vagrant
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y && sudo apt install vagrant -y

# install virtualbox 7.0 since 7.1 isn't supported yet
wget https://download.virtualbox.org/virtualbox/7.0.22/virtualbox-7.0_7.0.22-165102~Ubuntu~jammy_amd64.deb
sudo apt install ./virtualbox-7.0_7.0.22-165102~Ubuntu~jammy_amd64.deb -y

# install gcc-12
# https://www.dedoimedo.com/computers/virtualbox-kernel-driver-gcc-12.html
sudo apt install gcc-12 -y

# run vboxconfig
sudo /sbin/vboxconfig
