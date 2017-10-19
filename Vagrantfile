# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "ubuntu/trusty64"

    config.vm.network :private_network,
        ip: "10.20.30.40"

    config.vm.synced_folder "../", "/opt/dev",
        :nfs => true,
        :create => true

    config.vm.provider :virtualbox do |vb|
        vb.memory = 2048
    end

    config.vm.provision :shell,
        :keep_color => true,
        :path => "provision.sh",
        :privileged => false

end
