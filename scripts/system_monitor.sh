#!/bin/bash

#monitor CPU ,memory ,and Disk usage

echo "system monitor report - $(date)"
echo "----------------------------------------------------------------"


echo "CPU Load:"
uptime | awk '{print $10 $11 $12}'
echo

echo "Memory Usage:"
free -h
echo

echo "Disk Usage:"
df -h | grep '^/dev/'
