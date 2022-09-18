# Host

Para ver os servidores DNS:

```bash
host -t ns site.com
```

Para ver os servidores de email:

```bash
host -t mx site.com
```

Para ver os servidores HINFO:

```bash
host -t hinfo site.com
```

Para ver o endereço IPv4:

```bash
host -t A site.com
```

Para ver o endereço IPv6:

```bash
host -t AAAA site.com
```

Exibir IP Address de um subdomínio:

```bash
host mail.site.com
```
