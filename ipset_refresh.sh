#!/usr/bin/env bash

ipset create -exist chnroute hash:net family inet hashsize 1024 maxelem 10000000 timeout 0

ipset destroy chnroute	#刷新chnroute

sudo ipset restore -f /home/chnroute_config.txt		#导入ipset配置

sleep 5

sudo iptables-restore < /home/iptables_rules.txt	#导入iptables配置