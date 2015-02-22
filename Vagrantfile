# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box       = "rancheros"
  config.ssh.username = "rancher"
  # config.ssh.password = "rancher"

  config.vm.provider "virtualbox" do |vb|
     vb.check_guest_additions = false
     vb.functional_vboxsf     = false
     vb.memory = "1024"
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
end
