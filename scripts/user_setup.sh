#!/bin/bash

#Script to create new users and sudo permission

read -p "enter new username : " username

if id "$username" &>/dev/null ; then
   echo "user $username already exists!"
   exit 1
fi

#create user and set password
sudo adduser "$username"

#add sudo group
sudo usermod -aG sudo "$username"

echo "user $username and added to sudo group"

