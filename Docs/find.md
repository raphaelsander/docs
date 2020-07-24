# FIND

Procurando arquivo com nome completo:

```bash
find /root/ -name minhapesquisa
```

Procurando arquivo com parte do nome:

```bash
find /root/ -name minhapesqui*
```

Procurando arquivo root com permissão de edição para escalonar permissão:

```bash
find / -type f -perm 0777 2>/dev/null
```

Procurar arquivo com permissão de determinado usuário:

```bash
find [DIRETORIO] -user [USUARIO]
```

```bash
find / -user adm
```

Procurando arquivos com permissão de determinado grupo:

```bash
find [DIRETORIO] -group [GRUPO]
```

```bash
find / -group root
```
