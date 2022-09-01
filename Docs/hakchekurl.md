# hakchekurl

Instalação:

```bash
go install github.com/hakluke/hakcheckurl@latest
mv ~/go/bin/hakrawler /usr/bin
```

Resolvendo subdominios:

```bash
echo testphp.vulnweb.com | gauplus | hakcheckurl | grep -v '404|999|403|500'
```
