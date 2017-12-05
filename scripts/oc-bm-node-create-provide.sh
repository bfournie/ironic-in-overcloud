openstack baremetal create overcloud-nodes.yaml

ironic node-update ironic-0 add properties/capabilities='boot_option:local,profile:baremetal'

openstack baremetal node set ironic-0 --driver-info deploy_kernel=`openstack image show bm-deploy-kernel -f value -c id` --driver-info deploy_ramdisk=`openstack image show bm-deploy-ramdisk -f value -c id`

ironic node-set-provision-state ironic-0 manage

ironic node-set-provision-state ironic-0 provide

openstack baremetal node list


