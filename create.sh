#!/bin/bash
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags create
sleep 30
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags inventory
ansible-playbook manage_nodes.yml --ask-vault-pass --tags register
ansible-playbook manage_nodes.yml --ask-vault-pass
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags snap
