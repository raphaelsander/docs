# goop

O goop é uma ferramenta utilizada para verificação de git exposed.

<https://github.com/nyancrimew/goop>

Instalação:

```bash
go install github.com/deletescape/goop@latest
```

Uso básico:

```bash
goop domain.com -f
```

*O goop irá clonar os repositórios encontrados dentro da pasta em que está sendo executado.*

Uso do goop junto com o xargs:

```bash
echo tesla.com | subfinder -silent | xargs -I@ sh -c 'goop @ -f'
```
