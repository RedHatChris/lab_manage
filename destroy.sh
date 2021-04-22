#!/bin/bash
ansible-playbook manage_nodes.yml --vault-password-file vault/.vp.io --tags unregister
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags delsnap
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags destroy
rm -fv /etc/ansible/facts.d/lab-*
