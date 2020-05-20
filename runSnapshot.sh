#!/bin/bash

NETHOME=/home/hmoats/net-snapshot2

/usr/bin/ansible-playbook -i ${NETHOME}/inventory/hosts ${NETHOME}/all-main.yml --vault-password-file ${NETHOME}/.vault-pass
