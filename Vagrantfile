# -*- mode: ruby -*-
# vi: set ft=ruby :

vagrant_path = File.expand_path("#{ File.dirname(__FILE__) }/vagrant")
core_path = "#{ vagrant_path }/core"

load "#{ core_path }/boxes.rb"

BOXES = [
  {
    # box name should be unique per boxes set in 1 manifest
    :box_name => "box",
    :host     => "TheBox",
    :box      => BOX_ALIASES["debian9serv"],
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
    :synced_folders => [
      # windows work around for https://github.com/ansible/ansible/issues/42388
      ["./vagrant/unibook", "/provisioning/unibook", mount_options: ["dmode=755", "fmode=644"]],
    ],
    :provisions => [
      # [:shell, :path => "vagrant/provisioner-installers/ubu16-ansible-install"],
      # [:shell, :inline => "cd /provisioning/unibook/unibook && ansible-playbook unibook.yml", :privileged => false],
    ],
  },
]

load "#{ core_path }/vagrant.rb"
