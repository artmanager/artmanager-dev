# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.customize ["modifyvm", :id, "--cpus", 2]
  end

  #-----------------Box

  config.vm.box = "ubuntu/trusty64"

  #-----------------Provisions

  config.vm.provision :shell, :inline => "apt-get -y update && apt-get -y upgrade"
  config.vm.provision :shell, :inline => "apt-get install --reinstall -y language-pack-en language-pack-pt"
  config.vm.provision :shell, :inline => "apt-get install -y curl tmux vim sqlite3 fontconfig htop libxslt1.1 build-essential libtool checkinstall libxml2-dev tree openssl libssl-dev pkg-config jq"
  config.vm.provision :shell, :inline => "chmod 755 /home/vagrant"
  
  # Git
  config.vm.provision :shell, :path => "provision/git.sh"
  # Docker
  config.vm.provision :shell, :path => "provision/docker.sh"
  # Ruby
  config.vm.provision :shell, :path => "provision/rvm.sh", :args => "head"
  config.vm.provision :shell, :path => "provision/ruby.sh", :args => "2.2.0 bundler"
  # Nodejs
  config.vm.provision :shell, :path => "provision/nodejs.sh"
  # Postgres
  config.vm.provision :shell, :path => "provision/postgres.sh"
  # Prepare first time
  config.vm.provision :shell, :path => "provision/prepare_first_time.sh"
  config.vm.provision :shell, :path => "provision/bash_functions.sh"

  #-----------------Network

  # Postgres
  config.vm.network :forwarded_port, guest: 5432, host: 5432
 
end

