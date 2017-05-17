#!/bin/bash
iptables -I DOCKER-ISOLATION -p tcp --dport 514 -j DROP
iptables -I DOCKER-ISOLATION -p udp --dport 514 -j DROP
iptables -I DOCKER-ISOLATION -p tcp --dport 514 -s 140.142.159.0/24 -j ACCEPT
iptables -I DOCKER-ISOLATION -p tcp --dport 514 -s 192.168.6.0/24 -j ACCEPT
iptables -I DOCKER-ISOLATION -p tcp --dport 514 -s 172.16.0.0/12 -j ACCEPT
iptables -I DOCKER-ISOLATION -p tcp --dport 514 -s 127.0.0.1 -j ACCEPT

