# SUDO

É um programa para executar comandos com permissões específicas e/ou elevadas.

Executar um comando como root:

```bash
sudo [COMANDO]
```

```bash
sudo whoami
```

Executar um comando como um determinado usuário:

```bash
sudo -u [USUARIO] [COMANDO]
```

```bash
sudo -u adm whoami
```

Listar todos os comandos que podem ser executados com o usuário atual:

```bash
sudo -l
```

*Comando muito utilizado em escalação de privilégios.*
