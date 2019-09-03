# FIND

Procurando arquivo root com permissão de edição para escalonar permissão:  
```bash
find / -type f -perm 0777 2>/dev/null
```
