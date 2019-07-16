# MYSQL

É um banco de dados SQL muito utilizado em servidores WEB.

Encontrando banco de dados MYSQL:
```bash
nmap -v --open -sS -p3306 -Pn 192.168.0.0/24
```

Para acessar o cliente MYSQL:
```bash
mysql -h 192.168.0.106 -u root
```


## Comandos MYSQL
Exibir os bancos de dados:
mysql> show databases;

Verificar versão do Mysql:
mysql> select version();

Verificar data e hora:
mysql> select now();

Verificar data:
mysql> select current_date();

Verificar hora:
mysql> select current_time();

Mostrar usuário logado:
mysql> select user();

Mostrar database selecionado:
mysql> select database();

Efetuando operações matemáticas:
mysql> select 10+10
mysql> select 500/2

Acessar um banco de dados:
mysql> use databasename

Exibir as tabelas:
mysql> show tables;

Exibir dados da tabela:
mysql> select * from tablename;

Criando tabela:
mysql> create database app;

Usando banco de dados:
mysql> use app;

Criando tabela:
mysql> create table login
    -> (id int(4) primary key auto_increment,
    -> usuario varchar(20),
    -> senha varchar(20));

Verificar estrutura da tabela login que foi criada:
mysql> describe login;

Ver tudo da tabela login:
mysql> select * from login;

Adicionando dados na tabela:
mysql> insert into login values ('1','admin','123');
mysql> insert into login values ('','user01','123456');

Ver campos específicos da tabela login:
mysql> select id from login;
mysql> select usuario from login;

Pesquisando na tabela:
mysql> select * from login where senha="123";

Apagando tabela:
mysql> drop table login;

Apagando database:
drop database app;

