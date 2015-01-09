#!/bin/sh

# Allow established connections:
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m conntrack --ctstate ESTABLISHED -j ACCEPT

# Default rules:
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Loopback:
iptables -A INPUT -i lo -j ACCEPT

# Incoming SSH:
iptables -A INPUT -i eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT

# Outgoing SSH:
iptables -A INPUT -i eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# Incoming HTTP:
iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -i eth0 -p tcp --dport 8000 -m state --state NEW,ESTABLISHED -j ACCEPT

# Outgoing ping:
iptables -A INPUT -p icmp --icmp-type echo-reply -j ACCEPT

# DDoS:
iptables -A INPUT -p tcp --dport 80 -m limit --limit 100/minute --limit-burst 100 -j ACCEPT

# Save:
iptables-save
