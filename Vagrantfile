# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end

  config.vm.provision :shell, :path => "shell/pre-install.sh"

  # Now run the puppet provisioner. Note that the modules directory is entirely
  # managed by librarian-puppet
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "init.pp"
  end
end
