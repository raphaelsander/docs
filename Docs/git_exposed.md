# Git Exposed

Enumeração do alvo:

```bash
echo topcoder.com | subfinder -silent | httpx -silent | anew 200http
```

Enviando os subdomínios diretamente para o goop:

```bash
echo topcoder.com | subfinder -silent | xargs -I@ sh -c 'goop @ -f'
```
