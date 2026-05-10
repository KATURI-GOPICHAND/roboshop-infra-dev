#!/bin/bash

component=$1

dnf install ansible -y

cd /home/ec2-user
# Remove stale directory if it exists, then clone fresh
rm -rf devops-practice
git clone https://github.com/KATURI-GOPICHAND/devops-practice.git

cd /home/ec2-user/devops-practice/ansible-roboshop-roles-tf

ansible-playbook -e component=$component roboshop.yaml

