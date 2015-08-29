#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING DOCKER'
echo '----------------------------------------------'

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.com/ubuntu docker main >/etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install -y lxc-docker
usermod -aG docker vagrant
