#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING NODEJS'
echo '----------------------------------------------'

curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs