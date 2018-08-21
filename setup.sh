#!/usr/bin/env bash
set -x # debugging on
set -e # exit if command exits with non-zero status

# system updates
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# install python-pip and upgrade
sudo apt-get install -y python-pip
sudo -H pip install --upgrade pip

# install ansible from pip (more recent version)
sudo -H pip install ansible

# as much as I love cowsay, lets turn it off so Ansible's messages aren't cows
export ANSIBLE_NOCOWS=1

# Clone the Evomics 2019 github repo
git clone https://github.com/guyleonard/evomics_2019.git

# run the base playbook
ansible-playbook /home/ubuntu/evomics_2019/base/main.yaml -b -K -c local -i "localhost,"

# turn off
set +x
set +e
