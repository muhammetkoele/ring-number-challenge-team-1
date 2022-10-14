ip1=`sed -n 's/ip1=\(.*\)/\1/p' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/ips.txt`
ip2=`sed -n 's/ip2=\(.*\)/\1/p' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/ips.txt`
ip3=`sed -n 's/ip3=\(.*\)/\1/p' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/ips.txt`
ip4=`sed -n 's/ip4=\(.*\)/\1/p' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/ips.txt`
ip5=`sed -n 's/ip5=\(.*\)/\1/p' < ~/src/talent-academy/challenge_labs/ring-number-challenge-team-1/ips.txt`

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