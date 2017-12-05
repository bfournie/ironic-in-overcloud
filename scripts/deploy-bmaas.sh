THT=/usr/share/openstack-tripleo-heat-templates
openstack overcloud deploy --templates $THT \
-e $THT/environments/network-isolation.yaml \
-e $THT/environments/puppet-pacemaker.yaml \
-e /home/stack/templates/environments/network-environment.yaml \
-e /home/stack/rhos12.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/services-docker/ironic.yaml \
-e ironic.yaml \
--libvirt-type kvm \
--ntp-server pool.ntp.org \
--timeout 180 \
--debug

