#!/usr/bin/env bash

set -exuo pipefail

# Install System Dependencies
sudo apt install python3-pip
sudo -H pip3 install ansible

# Install Ansible Requirements
ansible-galaxy install --force -r requirements.yaml

# Execute Ansible
ansible-playbook --inventory inventory/hosts main.yaml
#ansible-playbook --extra-vars '@vault.yml' --inventory inventory/hosts main.yaml
