#!/bin/bash
echo "Enter Interface Name"
read interface
ifconfig $interface down
macchanger -r $interface
ifconfig $interface 192.168.0.3 netmask 255.255.255.0
echo "New IP Address: 192.168.0.3 " 
ifconfig $interface up
