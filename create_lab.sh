#!/bin/bash

ansible-playbook -i inventory/lab_infra.yml manage_infra.yml --tags create
ansible-playbook manage_nodes.yml
