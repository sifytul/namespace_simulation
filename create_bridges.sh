#!/bin/bash

echo 'creating bridges...'

# create network bridges
ip link add br0 type bridge
ip link add br1 type bridge

# Activate bridges
ip link set br0 up
ip link set br1 up


ip link show br0
ip link show br1

# enable packet distribution through bridge in iptables
iptables -A FORWARD --in-interface br0 -j ACCEPT
iptables -A FORWARD --out-interface br0 -j ACCEPT

iptables -A FORWARD --in-interface br1 -j ACCEPT
iptables -A FORWARD --out-interface br1 -j ACCEPT
