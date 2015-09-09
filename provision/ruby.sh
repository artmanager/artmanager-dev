#!/usr/bin/env bash

source /usr/local/rvm/scripts/rvm

rvm use --install $1

shift

if (( $# ))
then gem install $@
fi

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
rvm get stable --auto-dotfiles