# -*- mode: ruby -*-
# vi: set ft=ruby :

load File.expand_path("#{ File.dirname(__FILE__) }/vagrant/core/images.rb")

BOXES = [
  {
    :image    => SUPPORTED_IMAGES["ubuntu18"],
    :box_name => "box1",
    :host     => "TheBox",
    :memory   => 1024,
    :cpus     => 1,
    :gui      => false,
  },
]

load File.expand_path("#{ File.dirname(__FILE__) }/vagrant/core/vagrant.rb")
