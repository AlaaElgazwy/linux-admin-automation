#!/bin/bash

#disable root ssh login and restart ssh service


sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config 

sudo systemctl restart ssh

echo "root ssh login disabled successfully"
