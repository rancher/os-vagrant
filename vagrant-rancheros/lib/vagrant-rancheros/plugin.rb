begin
    require 'vagrant'
rescue LoadError
    raise 'The vagrant-rancheros_guest plugin must be run within Vagrant.'
end

module VagrantPlugins
  module GuestRancheros
    class Plugin < Vagrant.plugin("2")

      name "Rancheros guest plugin"
      description  "Rancheros guest plugin"

      guest "rancheros", "linux"  do
        require_relative "guest"
        Guest
      end
 
      guest_capability("rancheros", "change_host_name") do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end

      guest_capability("rancheros", "configure_networks") do
        require_relative "cap/configure_networks"
        Cap::ConfigureNetworks
      end
    end
  end
end
