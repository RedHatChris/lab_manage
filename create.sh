#!/bin/bash
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags create
sleep 15
ansible-playbook manage_nodes.yml --ask-vault-pass --tags register
ansible-playbook manage_nodes.yml --ask-vault-pass
