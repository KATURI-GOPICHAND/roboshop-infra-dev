#!/bin/bash

component=$1

dnf install ansible git -y

cd /home/ec2-user

rm -rf devops-practice

git clone https://github.com/KATURI-GOPICHAND/devops-practice.git

cd /home/ec2-user/devops-practice/ansible

ansible-playbook -e component=$component roboshop.yaml