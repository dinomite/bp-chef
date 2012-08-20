# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  config.vm.forward_port 7000, 7000

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path     = "roles"
    chef.data_bags_path = "data_bags"

    chef.add_role "base"
    chef.add_recipe "bp-controller"
  end
end
