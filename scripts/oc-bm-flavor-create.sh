openstack aggregate create --property baremetal=true baremetal-hosts

openstack compute service list

openstack aggregate add host baremetal-hosts overcloud-controller-0.localdomain

openstack flavor create --ram 1024 --disk 20 --vcpus 1 baremetal

openstack flavor set baremetal --property baremetal=true

