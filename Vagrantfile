# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 7000, 7000
  config.vm.forward_port 2281, 2281

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path     = "roles"
    chef.data_bags_path = "data_bags"

    chef.add_role "base"
    chef.add_recipe "bp-controller"
    chef.add_recipe "bp-worker"
  end
end
