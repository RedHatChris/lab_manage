SSC Lab Setup
==

This is a quick and dirty environment setup under Proxmox.

Main playbook is 'manage_ssc.yml' and can be used via:

```
ansible-playbook manage_ssc.yml
```

Tags
--
```
* snap     - snapshots the current environment
* delsnap  - deletes the lab snapshots
* rollback - rolls the lab back to its initial state
```


Playbooks
--
```
* base_tasks.yml
    basic tasks to set up hostname and hosts file for the lab

* del_snapshots.yml
    task to remove the lab snapshots

* rollback_lab.yml
    rolls back to the snapshots previously made

* snapshot_lab.yml
    snapshots the current lab state
```
