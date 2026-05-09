#!/bin/bash

component=$1
dnf install ansible -y

if [ ! -d "ansible-roboshop-roles-tf" ]; then
    git clone https://github.com/KATURI-GOPICHAND/ansible-roboshop-roles-tf.git
fi

cd /home/ec2-user/ansible-roboshop-roles-tf
ansible-playbook -e component=$component roboshop.yaml

