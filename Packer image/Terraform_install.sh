#!/bin/bash
sudo -i
sudo yum update
sudo yum install git java -y
curl https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip -O
unzip terraform_1.0.0_linux_amd64.zip
sudo cp terraform /usr/local/bin/