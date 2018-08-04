# -*- mode: ruby -*-
# vi: set ft=ruby :

vagrant_path = File.expand_path("#{ File.dirname(__FILE__) }/vagrant")
core_path = "#{ vagrant_path }/core"

load "#{ core_path }/images.rb"

BOXES = [
  {
    :image    => SUPPORTED_IMAGES["ubuntu18"],
    :box_name => "box1",
    :host     => "TheBox1",
    :defaults => {
      :ip       => nil,
      :gui      => false,
      :memory   => 1024,
      :cpus     => 1,
    },
    :env_vars => {
      :ip       => "IP",
      :gui      => "GUI",
      :memory   => "MEMORY",
      :cpus     => "CPUS",
    },
    :provisions => [
      # [:shell, :path => "vagrant/core/dummy/test.sh"],
      # [:shell, :inline => "echo 'Hello from dummy inline provisioner'"],
    ],
  },
]

load "#{ core_path }/vagrant.rb"
