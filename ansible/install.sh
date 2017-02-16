#!/usr/bin/env bash

# Update Repositories
sudo apt-get update

# Install Ansible
sudo apt-get install -y ansible

# Setup Ansible for Local Use and Run
cp /vagrant/ansible/inventories/dev /etc/ansible/hosts -f
chmod 666 /etc/ansible/hosts
sudo ansible-playbook /vagrant/ansible/playbook.yml -e hostname=$1 --connection=local
