#!/bin/bash

# Script to install VirtualBox Guest Additions after installation of the operating system.

# Examples
# - https://github.com/hnakamur/my-packer-template-files/blob/master/centos6.5/scripts/virtualbox.sh
# - https://github.com/boxcutter/centos/blob/master/script/virtualbox.sh
# - https://github.com/TFDuesing/packer-templates/blob/master/Fedora-23/scripts/10virtualbox.sh

if [ $PACKER_BUILDER_TYPE = "virtualbox-iso" ]; then
	yum install -y bzip2 dkms kernel-devel
	echo "==> Installing VirtualBox Guest Additions through script"
	mount -o loop /root/vbox-guest-additions.iso /mnt
	sh /mnt/VBoxLinuxAdditions.run --nox11
	
	if [[ $? -eq 0 ]]; then
		echo "==> VirtualBox Guest Additions successfully installed."
	else
		echo "==> Errors were found during VirtualBox Guest Additions installation. Please, verify what happened and try again."
	fi
	
	umount /mnt/
	rm -f /root/vbox-guest-additions.iso
fi
