# -*- mode: ruby -*-
# vi: set ft=ruby :

# To enable rsync folder share change to false
$rsync_folder_disabled = true


# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box       = "rancheros"
  config.vm.box_url   = "http://cdn.rancher.io/vagrant/x86_64/prod/rancheros_v0.1.2_virtualbox.box"
  config.ssh.username = "rancher"

  config.vm.provider "virtualbox" do |vb|
     vb.check_guest_additions = false
     vb.functional_vboxsf     = false
     vb.memory = "1024"
  end

  # Disabling compression because OS X has an ancient version of rsync installed.
  # Add -z or remove rsync__args below if you have a newer version of rsync on your machine.
  config.vm.synced_folder ".", "/opt/rancher", type: "rsync",
    rsync__exclude: ".git/", rsync__args: ["--verbose", "--archive", "--delete", "--copy-links"],
    disabled: $rsync_folder_disabled

end
