#!/bin/bash

# create veth cable
echo 'creating veth cable...'

ip link add veth1-ns0 type veth peer name veth1-br0
ip link add veth2-router type veth peer name veth2-br0
ip link add veth3-router type veth peer name veth3-br1
ip link add veth4-ns1 type veth peer name veth4-br1


# connect veth cable to corrct ns
echo 'connecting veth cable to correct ns and bridges...'

ip link set veth1-ns0 netns ns0
ip link set veth2-router netns router-ns
ip link set veth3-router netns router-ns
ip link set veth4-ns1 netns ns1


# connect veth cable to appropriate bridges
ip link set veth1-br0 master br0
ip link set veth2-br0 master br0
ip link set veth3-br1 master br1
ip link set veth4-br1 master br1


echo 'activating veth cable...'

# activate veth1
ip netns exec ns0 ip link set veth1-ns0 up
ip link set veth1-br0 up


# activate veth2
ip netns exec router-ns ip link set veth2-router up
ip link set veth2-br0 up


# activate veth3
ip netns exec router-ns ip link set veth3-router up
ip link set veth3-br1 up


# activate veth4
ip netns exec ns1 ip link set veth4-ns1 up
ip link set veth4-br1 up

