#!/bin/bash

component=$1

dnf install ansible git -y

cd /home/ec2-user
rm -rf ansible-roboshop-roles-tf

git clone https://github.com/KATURI-GOPICHAND/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component roboshop.yaml