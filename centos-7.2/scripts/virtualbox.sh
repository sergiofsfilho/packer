#!/bin/bash

# Script to install VirtualBox Guest Additions after
# installation of the operating system.

# Examples
# - https://github.com/hnakamur/my-packer-template-files/blob/master/centos6.5/scripts/virtualbox.sh
# - https://github.com/boxcutter/centos/blob/master/script/virtualbox.sh

echo "==> Installing VirtualBox Guest Additions through script"

cd /tmp
mkdir /mnt/cdrom
mount /home/vagrant/vbox-guest-additions.iso /mnt/cdrom
sh /mnt/cdrom/VBoxLinuxAdditions.run --nox11

	if [ $? == "0" ]; then
		echo "==> VirtualBox Guest Additions successfully installed."
	else
		echo "==> Errors were found during VirtualBox Guest Additions installation. Please check and try again."
	fi

umount /mnt/cdrom
rm -rf /mnt/cdrom
rm -f /home/vagrant/vbox-guest-additions.iso
