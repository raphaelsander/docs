# RPCCLIENT

Ferramenta para SMB.

Conectar ao compartilhamento SMB sem usuário e senha:

```bash
rpcclient -U "" -N 192.168.0.114
```

Para listar todos os usuários:

```bash
rpcclient $> enumdomusers
```

Para listar os compartilhamentos:

```bash
rpcclient $> netshareenum
```

Para listar todos os compartilhamentos:

```bash
rpcclient $> netshareenumall
```

Para mostrar informações sobre o domínio:

```bash
rpcclient $> querydominfo
```

Para trazer informações sobre o usuário:

```bash
rpcclient $> queryuser Administrador
```

Para fechar a conexão do rpcclient:

```bash
rpcclient $> exit
```

Passando um usuário na conexão:

```bash
rpcclient -U "Administrador" -N 192.168.0.114
```
