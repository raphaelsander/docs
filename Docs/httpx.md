# HTTPX

<https://github.com/projectdiscovery/httpx>

Instalação:

```bash
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
```

Validando js status code e salvando removendo duplicados:

```bash
cat jstesla | httpx -status-code -mc 200 | anew js200
```

*O arquivo jstesla foi originado do gauplus.*
