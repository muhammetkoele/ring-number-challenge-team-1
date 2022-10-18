#!/bin/bash

cd ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/
git checkout jemila
git pull
ip1=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
git checkout julioaranajr
git pull
ip2=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
git checkout leticia
git pull
ip3=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
git checkout muhammet
git pull
ip4=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
git checkout rima
git pull
ip5=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
git checkout leticia
printf '[servers_jemila]
%s

[servers_julio]
%s

[servers_leticia] 
%s

[servers_muhammet]
%s

[servers_rima]
%s

[servers:children]
servers_jemila
servers_julio
servers_leticia
servers_muhammet
servers_rima

[servers:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/ring-challenge-team-1' "$ip1" "$ip2" "$ip3" "$ip4" "$ip5"> ~//src/talent-academy/challenge_labs/ring-number-challenge-team-1/configuration/inventory.hosts
cd configuration/
ansible-playbook main-playbook.yaml