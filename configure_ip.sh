#!/bin/bash

echo 'configuring ip...'


# assign ip addr to veth1-ns0
ip netns exec ns0 ip addr add 192.168.1.3/24 dev veth1-ns0


# assign ip addr to veth2-router
ip netns exec router-ns ip addr add 192.168.1.1/24 dev veth2-router


# assign ip addr to veth3-router
ip netns exec router-ns ip addr add 192.168.2.1/24 dev veth3-router


# assign ip addr to veth4-ns1
ip netns exec ns1 ip addr add 192.168.2.3/24 dev veth4-ns1