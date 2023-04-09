# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provision "shell", inline: <<-SHELL
    echo "LANG=en_US.UTF-8" >> /etc/environment
    timedatectl set-timezone Asia/Tokyo
  SHELL

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "test_virtual_machine.yml"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 1
  end

  MAX_OF_SERVERS = (ENV["MAX_OF_SERVERS"] || 1).to_i
  (0...MAX_OF_SERVERS).each do |i|
    config.vm.define "host#{i+1}" do |server|
      server.vm.hostname = "host#{i+1}"
      server.vm.network "private_network", ip: "192.168.56.1#{i+1}"
    end
  end

end
