<<<<<<< HEAD
#!/usr/bin/env bash


wget --no-check-certificate -O- 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | awk -F\| '/CN\|ipv4/ { printf("%s/%d\n", $4, 32-log($5)/log(2)) }' > /home/chnroute.txt

ipset flush chnroute

while read ip; do
    ipset add chnroute $ip
done < /home/chnroute.txt

ipset save chnroute -f /home/chnroute_config.txt

iptables-restore < /home/iptables_rules.txt
=======
#!/usr/bin/env bash


wget --no-check-certificate -O- 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | awk -F\| '/CN\|ipv4/ { printf("%s/%d\n", $4, 32-log($5)/log(2)) }' > /home/chnroute.txt

ipset flush chnroute

while read ip; do
    ipset add chnroute $ip
done < /home/chnroute.txt

ipset save chnroute -f /home/chnroute_config.txt

iptables-restore < /home/iptables_rules.txt
>>>>>>> 4a0be2aa42b8ab57b8a4b11be64513e516644170
