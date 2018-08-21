# evomics.org 2019
Instructions and notes for creating the Virtual Machines for the evomics.org Workshops 2019. The final versions will be stored as a set of Amazon Machine Images (AMIs).

# 2019 Workshops (Genomics & Phylogenomics)
We will be using the latest Ubuntu Linux LTS as our initial VM, in this case: [ami-053295bb822a154ba](https://console.aws.amazon.com/ec2/home?region=us-east-1#launchAmi=ami-053295bb822a154ba) which is the 'us-east-1' copy of Ubuntu Bionic Beaver 18.04 LTS.

## Automation
We will use a series of shell scripts, [Ansible](https://www.ansible.com/) and a few other package managers such as apt-get, pip, conda, and gem to install the software, dependancies and workshop materials. This will be split into three tasks: base VM setup, genomics specific setup and phylogenmocics specific setup. Each of the workshops will also be split in to softare and material sections.

# Using This Repository
To build the VM for either workshop, you will need to run at least the [setup.sh]() and then both sets of playbooks from either or both workshops.

## Base AMI Setup

Log in to your virtual machine and run this code:

    wget -O- https://raw.githubusercontent.com/guyleonard/evomics_2019/master/setup.sh | bash

If you already have a base AMI that you wish to use you can do this instead:

    git clone https://github.com/guyleonard/evomics_2019.git
    ansible-playbook /home/ubuntu/evomics_2019/base/main.yaml -b -K -c local -i "localhost,"

# Previous
[2018](https://github.com/guyleonard/evomics_2018)
[2017](https://github.com/guyleonard/evomics_2017)
