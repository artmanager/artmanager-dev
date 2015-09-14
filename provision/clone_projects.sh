#!/bin/bash 

BASHRC="/home/vagrant/.bashrc"

if grep "USERNAME_BITBUCKET" $BASHRC;then
  echo "Usuario e senha do Bitbucket OK"
else
  echo "Digite seu usuario no bitbucket, seguido pelo ENTER"
  read USERNAME_BITBUCKET
  echo "Digite sua senha no bitbucket, seguido pelo ENTER"
  read PASSWORD_BITBUCKET
  echo "USERNAME_BITBUCKET=$USERNAME_BITBUCKET" >> $BASHRC
  echo "PASSWORD_BITBUCKET=$PASSWORD_BITBUCKET" >> $BASHRC
fi

echo -ne "Coletando dados do bitbucket." && sleep 1 && echo -ne "." && sleep 1 && echo "."

curl --silent -u ${USERNAME_BITBUCKET}:${PASSWORD_BITBUCKET} https://bitbucket.org/api/2.0/repositories/artmanager | python -mjson.tool | jq '.values[] | .name' | sed 's/"//g' | while read PROJECTS; do
  if [[ "artmanager-dev" != $PROJECTS ]]; then
    if [[ -d "/vagrant/projects/$PROJECTS" ]]; then
      cd "/vagrant/projects/$PROJECTS"
      git pull origin master
    else
      cd /vagrant/projects
      git clone git@bitbucket.org:artmanager/$PROJECTS.git
      ln -s /vagrant/projects/$PROJECTS ~/$PROJECTS
    fi
  fi
done
