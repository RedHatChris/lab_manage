#!/bin/bash
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags create
sleep 30
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags inventory
cp -av /home/chris/git/RedHat/ansible/inventory/lab_inventory.yml /home/chris/git/RedHat/ansible/plays/ssc.tower/inventory/ssc_inventory.yml
ansible-playbook manage_nodes.yml --vault-password-file vault/.vp.io --tags register
ansible-playbook manage_nodes.yml --vault-password-file vault/.vp.io
ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags snap
