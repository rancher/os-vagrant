require "vagrant"

module VagrantPlugins
  module GuestRancheros
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
        machine.communicate.test("grep ID=rancheros /etc/os-release")
      end
    end
  end
end
