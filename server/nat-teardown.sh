#!/bin/bash

iptables -D FORWARD -i wg0 -j ACCEPT
iptables -D FORWARD -i ens4 -j ACCEPT
iptables -t nat -D POSTROUTING -o wg0 -j MASQUERADE
iptables -t nat -D POSTROUTING -o ens4 -j MASQUERADE
ip6tables -D FORWARD -i wg0 -j ACCEPT
ip6tables -D FORWARD -i ens4 -j ACCEPT
ip6tables -t nat -D POSTROUTING -o wg0 -j MASQUERADE
ip6tables -t nat -D POSTROUTING -o ens4 -j MASQUERADE
