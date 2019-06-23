# MYSQL

É um banco de dados SQL muito utilizado em servidores WEB.

Encontrando banco de dados MYSQL:
```bash
nmap -v --open -sS -p3306 -Pn 192.168.0.0/24
```

Para acessar o cliente MYSQL:
```bash
mysql -h 192.168.0.106 -u root


## Comandos MYSQL
Exibir os bancos de dados:
mysql> show databases;

Acessar um banco de dados:
mysql> use databasename

Exibir as tabelas:
mysql> show tables;

Exibir dados da tabela:
mysql> select * from tablename;
