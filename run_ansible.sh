#!/bin/bash
set -e

ANSIBLE_USER=uli

HOST_IP="$1"
if [ -z $HOST_IP ]; then
  echo "The ip argument missing or empty"
  exit 1
fi

pushd ansible
ansible-playbook playbook.yml -i $HOST_IP, -e ansible_user=$ANSIBLE_USER --ask-become-pass
popd