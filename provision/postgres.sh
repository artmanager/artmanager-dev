#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING POSTGRES'
echo '----------------------------------------------'

apt-get install -y postgresql-9.3 postgresql-server-dev-9.3 postgresql-contrib postgresql-client-9.3

sudo -u postgres createuser -r -s -d vagrant
sudo -u postgres createdb artmanager_development -O vagrant
sudo -u postgres psql <<EOSQL
ALTER USER vagrant WITH PASSWORD 'vagrant';
GRANT ALL PRIVILEGES ON DATABASE artmanager_development TO vagrant;
EOSQL

sudo -u postgres psql -d template1 -c 'create extension hstore;'
echo "host all all all password" >> /etc/postgresql/9.3/main/pg_hba.conf
echo "listen_addresses = '*'" >> /etc/postgresql/9.3/main/postgresql.conf
