# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Use Ubuntu 14.04 64 bit
  config.vm.box = "ubuntu/trusty64"

  # Install system requirements
  config.vm.provision "shell", path: "bootstrap/system.sh"
  
  # Configure guest services to be accessible on host
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 27017, host: 27017
end
