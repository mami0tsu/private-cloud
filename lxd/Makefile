profile_name := vm
profile := profile.yaml
user-data := cloud-init.yaml
cpu := 2 # Number of vCPUs
memory := 4GiB # Memory size

instance_name := sandbox
instance_image := ubuntu:jammy

install-lxd:
	sudo apt update
	sudo snap install lxd --channel=5.0/stable

create-profile:
	chmod +x ./create-profile.sh && \
	./create-profile.sh $(profile_name) $(profile) $(user-data) $(cpu) $(memory)

delete-profile:
	lxc profile delete $(profile_name)

launch-sandbox:
	lxc launch $(instance_image) $(instance_name) --vm -p $(profile_name)

destroy-sandbox:
	lxc stop $(instance_name) && \
	lxc delete $(instance_name)
