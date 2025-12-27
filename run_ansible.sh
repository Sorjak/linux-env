#!/bin/bash
set -e

NEW_USER="uli"
PUBKEY_FILE="/home/uli/.ssh/id_ed25519.pub"

HOST_IP="$1"
if [ -z $HOST_IP ]; then
  echo "The ip argument missing or empty"
  exit 1
fi

USER_PASSWORD="$2"
if [ -z $USER_PASSWORD ]; then
  echo "The password argument missing or empty"
  exit 1
fi

echo "Running ansible playbook on host $HOST_IP with user $NEW_USER and password $USER_PASSWORD"
pushd ansible
ansible-playbook playbook.yml -k -i $HOST_IP, -e ansible_user=root -e new_user=$NEW_USER -e user_pw=$USER_PASSWORD -e pubkey_file=$PUBKEY_FILE
popd