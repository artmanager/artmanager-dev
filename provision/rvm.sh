#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING RVM'
echo '----------------------------------------------'

\curl -sSL https://get.rvm.io | bash -s $1

usermod -a -G rvm vagrant


echo source /etc/profile.d/rvm.sh > /etc/profile.d/rvm_custom.sh
echo PATH=$PATH:/usr/local/bin >> /etc/profile.d/rvm_custom.sh
echo rvm use ruby-2.2.0 >> /etc/profile.d/rvm_custom.sh