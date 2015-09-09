#!/usr/bin/env bash

echo 'function clone_projects() {' >> /home/vagrant/.bashrc
echo '  cd /vagrant/provision && ./clone_projects.sh && cd ~/ && ls' >> /home/vagrant/.bashrc
echo '}' >> /home/vagrant/.bashrc
echo "echo '#######################################################################'" >> /etc/profile
echo "echo '##### Execute clone_projects para atualizar todos os repositorios #####'" >> /etc/profile
echo "echo '#######################################################################'" >> /etc/profile
