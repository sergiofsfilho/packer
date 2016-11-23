# My Packer templates
## Description
This is the repository where I store the code that I use to generate some virtual machine templates/images.

Here you can find Packer templates, Kickstart files, Shell scripts and so on that are useful to build Vagrant boxes, however, my main intention with this project is to generate Packer templates that can be used in order to not only generate Vagrant boxes for VirtualBox for development purposes but also for staging or production environments using VMware vSphere or some cloud provider such as Amazon Web Services.

## Prerequisites
* [Packer](http://www.packer.io/)
* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)

## Usage
I'll document it later.

Once the build is complete, Packer will output one or more Vagrant .box files in the current working directory.  You can add a box to your Vagrant installation with `vagrant box add --name <name-of-box> </path/to/.box file>`.

## Templates
- [CentOS 7.2 - not ready yet](https://github.com/sergiofsfilho/packer/tree/master/centos-7.2)

## Thanks to
- [TFDuesing](https://github.com/TFDuesing) and his [packer-templates](https://github.com/TFDuesing/packer-templates) repository
- [Boxcutter](https://github.com/boxcutter) project
- [hnakamur](https://github.com/hnakamur) and his [my-packer-template-files](https://github.com/hnakamur/my-packer-template-files) repository
