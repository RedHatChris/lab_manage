#!/bin/bash
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags rollback
sleep 15
ansible-playbook manage_nodes.yml --vault-password-file vault/.vp.io --tags bashrc
