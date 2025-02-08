#!/bin/bash

echo 'configuring route...'


# add default route in ns0
ip netns exec ns0 ip route add default via 192.168.1.1


# add default route in ns1
ip netns exec ns1 ip route add default via 192.168.2.1


# enable ip forwarding in router-ns
ip netns exec router-ns sysctl -w net.ipv4.ip_forward=1