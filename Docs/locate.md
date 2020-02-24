# Locate

Programa utilizado para localizar arquivos.

Procurando um arquivo:

```bash
locate access.log
```

```bash
locate sshd_config
```

Para arquivos recém criados o locate não consegue localiza-lo, sendo necessário a atualização do seu banco de dados:

```bash
updatedb
```

*A atualização desse banco de dados é efetuada automaticamente a cada reinicialização do sistema Linux.*
