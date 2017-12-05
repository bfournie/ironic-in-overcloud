
openstack network create --share --provider-network-type vlan --provider-physical-network datacentre --provider-segment 205 provisioning 
openstack subnet create --network provisioning --subnet-range 172.21.2.0/24 --gateway 172.21.2.1  --allocation-pool  start=172.21.2.201,end=172.21.2.250 provisioning-subnet
