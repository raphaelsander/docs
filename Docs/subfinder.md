# subfinder

<https://github.com/projectdiscovery/subfinder>

Instalação:

```bash
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo mv ~/go/bin/subfinder /usr/bin/
```

Uso básico:

```bash
echo hackerone.com | subfinder -silent
```

ou

```bash
subfinder -d hackerone.com -silent
```
