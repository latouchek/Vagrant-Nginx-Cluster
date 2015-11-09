# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
###edit if you want more nodes###
  NODE_COUNT = 3
  ipAddrPrefix = "10.1.1.10"
  config.ssh.insert_key = false
  config.vm.box = "ubuntu/vivid64"
  config.vm.provider "virtualbox" do |v|
  v.customize ["modifyvm", :id, "--memory", 2048]
  end

 NODE_COUNT.times do |i|
    node_id = "node#{i+1}"
    config.vm.define node_id do |node|
      node.vm.hostname = "#{node_id}.leo.test"
      node.vm.network :private_network, ip: ipAddrPrefix + i.to_s

    end
  end
  config.vm.define :lb do |lb|
      lb.vm.network :private_network, ip: "10.1.1.9"
      lb.vm.hostname = "lbnginx.leo.test"
      lb.vm.network "forwarded_port", guest: 80, host: 8080
      lb.vm.provision :ansible do |ansible|
                ansible.limit = 'all'
                ansible.groups = {
                  "lbnginx" => ["lb"],
                  "web" => ["node1","node2","node3"],  #####edit if you want more nodes
                  "all_groups:children" => ["web","lbnginx"]
                }
      ansible.playbook = "playbook.yml"
             end
    end
end
