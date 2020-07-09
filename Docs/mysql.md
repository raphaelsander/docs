# MYSQL

É um banco de dados SQL muito utilizado em servidores WEB.

---

Encontrando banco de dados MYSQL:

```bash
nmap -v --open -sS -p3306 -Pn 192.168.0.0/24
```

---

Para acessar o cliente MYSQL:

```bash
mysql -h 192.168.0.106 -u root
```

---

## Comandos MYSQL

Exibir os bancos de dados:

```mysql
mysql> show databases;
```

Verificar versão do Mysql:

```mysql
mysql> select version();
```

Verificar data e hora:

```mysql
mysql> select now();
```

Verificar data:

```mysql
mysql> select current_date();
```

Verificar hora:

```mysql
mysql> select current_time();
```

Mostrar usuário logado:

```mysql
mysql> select user();
```

Mostrar database selecionado:

```mysql
mysql> select database();
```

Efetuando operações matemáticas:

```mysql
mysql> select 10+10
mysql> select 500/2
```

Acessar um banco de dados:

```mysql
mysql> use databasename
```

Exibir as tabelas:

```mysql
mysql> show tables;
```

Exibir dados da tabela:

```mysql
mysql> select * from tablename;
```

Criando tabela:

```mysql
mysql> create database app;
```

Usando banco de dados:

```mysql
mysql> use app;
```

Criando tabela:

```mysql
mysql> create table login
    -> (id int(4) primary key auto_increment,
    -> usuario varchar(20),
    -> senha varchar(20));
```

Verificar estrutura da tabela login que foi criada:

```mysql
mysql> describe login;
```

Ver tudo da tabela login:

```mysql
mysql> select * from login;
```

Adicionando dados na tabela:

```mysql
mysql> insert into login values ('1','admin','123');
mysql> insert into login values ('','user01','123456');
```

Ver campos específicos da tabela login:

```mysql
mysql> select id from login;
mysql> select usuario from login;
```

Pesquisando na tabela:

```mysql
mysql> select * from login where senha="123";
```

Apagando tabela:

```mysql
mysql> drop table login;
```

Apagando database:

```mysql
drop database app;
```

Links para pesquisa:

- <https://elias.praciano.com/2013/02/mysql-comandos-basicos/>  
- <https://elias.praciano.com/2014/03/mysql-o-comando-select/>
- <https://targettrust.com.br/blog/comando-select/>
- <http://www.devfuria.com.br/sql/mysql-pelo-terminal/>
- <https://gist.github.com/hofmannsven/9164408>
