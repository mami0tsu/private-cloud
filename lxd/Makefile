# general
install-lxd:
	sudo apt update
	sudo snap install lxd --channel=5.0/stable

# desktop
create-desktop-profile:
	chmod +x ./create-profile.sh && \
	./create-profile.sh desktop profile.yaml cloud-init.desktop.yaml 4 8GiB

delete-desktop-profile:
	lxc profile delete desktop

launch-desktop:
	lxc launch ubuntu:jammy desktop --vm -p desktop

destroy-desktop:
	lxc stop desktop && \
	lxc delete desktop

# sandbox
create-sandbox-profile:
	chmod +x ./create-profile.sh && \
	./create-profile.sh sandbox profile.yaml cloud-init.sandbox.yaml 2 8GiB

delete-sandbox-profile:
	lxc profile delete sandbox

launch-sandbox:
	lxc launch ubuntu:jammy sandbox --vm -p sandbox

destroy-sandbox:
	lxc stop sandbox && \
	lxc delete sandbox
