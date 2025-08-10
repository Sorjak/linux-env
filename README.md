Running Ansible:

Make sure you have a fresh VM with:
- a known IP
- ssh access and private key via ssh access
- a local user on the VM that you can ssh into
    - change the ANSIBLE_USER value in run_ansible.sh (default "uli")
- root user access to the VM

run the script
`./run_ansible.sh <VM IP address>`

when it asks for become pass, provide the root password