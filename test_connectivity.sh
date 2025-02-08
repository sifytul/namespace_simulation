#!/bin/bash

# ping ns0 =====> ns1 
echo 'ping from ns0 to ns1'
ip netns exec ns0 ping 192.168.2.3 -c 3