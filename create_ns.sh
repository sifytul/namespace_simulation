#!/bin/bash

echo 'creating namespaces...'

ip netns add ns0
ip netns add ns1
ip netns add router-ns

# verify ns creation
echo 'Created namespeces are:'
ip netns list 
