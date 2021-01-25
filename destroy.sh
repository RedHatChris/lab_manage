#!/bin/bash
ansible-playbook manage_nodes.yml --ask-vault-pass --tags unregister
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags destroy
