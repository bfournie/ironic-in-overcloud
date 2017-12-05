openstack image create   --container-format aki   --disk-format aki   --public   --file images/ironic-python-agent.kernel bm-deploy-kernel

openstack image create   --container-format ari   --disk-format ari   --public   --file images/ironic-python-agent.initramfs bm-deploy-ramdisk
i
openstack image create --public --container-format aki --disk-format aki --file images/overcloud-full.initrd overcloud-full-initrd

openstack image create --public --container-format aki --disk-format aki --file images/overcloud-full.vmlinuz overcloud-full-vmlinuz

openstack image create --file images/overcloud-full.qcow2 --public --container-format bare --disk-format qcow2 --property kernel_id=`openstack image list |awk '/overcloud-full-vmlinuz/ {print $2}'` --property ramdisk_id=`openstack image list |awk '/overcloud-full-initrd/ {print $2}'` overcloud-full

