cd ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/
git checkout ansible
git pull

ip1=`sed '1q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
ip2=`sed '2q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
ip3=`sed '3q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
ip4=`sed '4q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`
ip5=`sed '5q;d' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt`

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
ansible_ssh_private_key_file=~/.ssh/ring-challenge-team-1' "$ip1" "$ip2" "$ip3" "$ip4" "$ip5"> inventory.hosts

rm ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/instance-ip.txt
git add -u
git commit -m "delete instance-ip.txt"
git push

ansible-playbook main-playbook.yaml