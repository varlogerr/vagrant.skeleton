# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  BOXES.each_index do |index|
    box_conf = BOXES[index]

    config.vm.define box_conf[:box_name], primary: index == 0 ? true : false do |box|
      the_vm = box.vm

      the_vm.box_check_update = false
      the_vm.box = box_conf[:image]
      the_vm.hostname = box_conf[:box_host]

      the_vm.provider "virtualbox" do |vb|
        vb.gui = box_conf[:gui]
        vb.memory = box_conf[:memory]
        vb.cpus = box_conf[:cpus]

        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      end
    end
  end
end
