#!/bin/bash

#variable definitions
NUMBER_FILE_NAME="/home/ubuntu/number.txt"
IP_ADDRESS_FILE_NAME="/home/ubuntu/repobranch/instance-ip.txt"

if [ -e $NUMBER_FILE_NAME ] && [ -e $IP_ADDRESS_FILE_NAME ]
    then
        next_ip_address=$(cat $IP_ADDRESS_FILE_NAME)
        echo "next instance's ip address: " $next_ip_address
        value=$(cat $NUMBER_FILE_NAME)
        echo "received number: " $value
        value=$((value+1))
        echo "sending number: " $value
        echo $value > $NUMBER_FILE_NAME
        scp -o StrictHostKeyChecking=no -i ~/.ssh/ring-challenge-team-1 $NUMBER_FILE_NAME ubuntu@$next_ip_address:/home/ubuntu/
        rm $NUMBER_FILE_NAME
    else
        echo "File not found"
fi