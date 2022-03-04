#!/bin/bash

# clone kiamol repo
git clone https://github.com/sixeyed/kiamol.git ../kiamol

# install ansible
sudo apt update -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# install virtualbox
wget https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb
sudo apt install ./virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb -y

# install vagrant
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update -y && sudo apt install vagrant -y
