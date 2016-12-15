ansible-playbook ./azure_playbooks/new_vm_web.yml --extra-vars "vmname=$1 rscgrp=$2"
# At this point the VM is new, we need to skip the known_hosts check
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ./azure_rm.py ./azure_playbooks/httpd.yml --extra-vars "vmname=$1"
