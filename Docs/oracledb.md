## Oracle DB

## Backup

Para que os exemplos funcionem, devemos primeiro desbloquear a conta SCOTT e criar um objeto de diretório que ele possa acessar. O objeto de diretório é apenas um ponteiro para um diretório físico, criando-o na verdade não cria o diretório físico no sistema de arquivos do servidor de banco de dados.

```sql
CONN / AS SYSDBA
ALTER USER scott IDENTIFIED BY tiger ACCOUNT UNLOCK;

CREATE OR REPLACE DIRECTORY test_dir AS '/u01/app/oracle/oradata/';
GRANT READ, WRITE ON DIRECTORY test_dir TO scott;
```

Diretórios existentes podem ser consultados usando a exibição ``ALL_DIRECTORIES``.

### Exportação e importação de tabelas:

```bash
expdp scott/tiger@db10g tables=EMP,DEPT directory=TEST_DIR dumpfile=EMP_DEPT.dmp logfile=expdpEMP_DEPT.log
```

```bash
impdp scott/tiger@db10g tables=EMP,DEPT directory=TEST_DIR dumpfile=EMP_DEPT.dmp logfile=impdpEMP_DEPT.log
```

### Exportação e importação de esquemas:

```bash
expdp scott/tiger@db10g schemas=SCOTT directory=TEST_DIR dumpfile=SCOTT.dmp logfile=expdpSCOTT.log
```

```bash
impdp scott/tiger@db10g schemas=SCOTT directory=TEST_DIR dumpfile=SCOTT.dmp logfile=impdpSCOTT.log
```

### Exportação e importação de banco de dados:

```bash
expdp system/password@db10g full=Y directory=TEST_DIR dumpfile=DB10G.dmp logfile=expdpDB10G.log
```

```bash
impdp system/password@db10g full=Y directory=TEST_DIR dumpfile=DB10G.dmp logfile=impdpDB10G.log
```

Referência: <https://oracle-base.com/articles/10g/oracle-data-pump-10g>
