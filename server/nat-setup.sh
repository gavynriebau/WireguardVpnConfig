#!/bin/bash

iptables -A FORWARD -i wg0 -j ACCEPT
iptables -A FORWARD -i ens4 -j ACCEPT
iptables -t nat -A POSTROUTING -o wg0 -j MASQUERADE
iptables -t nat -A POSTROUTING -o ens4 -j MASQUERADE
ip6tables -I FORWARD -i wg0 -j REJECT
ip6tables -I FORWARD -i ens4 -j REJECT
