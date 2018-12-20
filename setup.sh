#!/usr/bin/env bash
set -x # debugging on
set -e # exit if command exits with non-zero status

# system updates
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo apt-get -y install software-properties-common

# install ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt -y install ansible

# as much as I love cowsay, lets turn it off so Ansible's messages aren't cows
export ANSIBLE_NOCOWS=1

# Clone the Evomics 2019 github repo
git clone https://github.com/guyleonard/evomics_2019.git

# run the base playbook
ansible-playbook /home/ubuntu/evomics_2019/base/main.yaml -b -K -c local -i "localhost,"

# turn off
set +x
set +e
