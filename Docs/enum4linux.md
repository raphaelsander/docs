# ENUM4LINUX

Ferramenta para enumeração de SMB.

Para enumarar um IP:

```bash
enum4linux -a 192.168.0.114
```

Para passar um usuário sem senha:

```bash
enum4linux -a -u administrador -p "" 192.168.0.114
```
