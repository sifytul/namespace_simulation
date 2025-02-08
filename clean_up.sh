# clean up veth cable
ip netns exec ns0 ip link del veth1-ns0
ip netns exec router-ns ip link del veth2-router
ip netns exec router-ns ip link del veth3-router
ip netns exec ns1 ip link del veth4-ns1


# clean up network namespace
ip netns del ns0
ip netns del ns1
ip netns del router-ns

# clean up bridges
ip link del br0
ip link del br1

echo 'Everything has been cleaned up'



