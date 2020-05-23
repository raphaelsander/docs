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
