# -*- mode: ruby -*-
# vi: set ft=ruby :

load File.expand_path("#{ File.dirname(__FILE__) }/vagrant/core/images.rb")

COMMON_PROVISIONS = [
  [:shell, :path => "vagrant/unibook/installer/ubuntu-xenial"],
  [:shell, :inline => "cd /home/vagrant && grep '/vagrant/vagrant/bin' .bashrc >/dev/null || echo PATH=\\$PATH:/vagrant/vagrant/bin >> .bashrc"],
]

BOXES = [
  {
    :box_name => "box1",
    :host => "TheBox",
  },
]

load File.expand_path("#{ File.dirname(__FILE__) }/vagrant/core/vagrant.rb")
