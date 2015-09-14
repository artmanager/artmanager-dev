- instalar na máquina principal, pois a vagrant irá iniciar uma nova VM

vagrant - http://www.vagrantup.com 

virtual box - http://www.virtualbox.org

- Para criar (e iniciar) a VM execute o comando

```
vagrant up
```

- Para fazer login na nova VM do ubuntu execute

```
vagrant ssh
```

- DESLIGAR a VM

```
exit
vagrant halt
```

## - O novo ambiente foi criado para todos rodarem os testes e realizarem as validações do código ##

- Conectar ao postgres pelo linux
```
psql -W -d artmanager_development -U vagrant -h localhost

password: ***
```
- [Dados do PostgreSQL](https://bitbucket.org/artmanager/artmanager-dev/src/698a974831dea6dc2ff950abbc3683b10974166c/provision/postgres.sh?at=master&fileviewer=file-view-default)