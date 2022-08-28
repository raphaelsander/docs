# Open Redirect

Descrição:

- <https://www.zaproxy.org/docs/alerts/10028/>
- <https://cwe.mitre.org/data/definitions/601.html>

Comando automatizado para busca da falha de open redirect:

```bash
waybackurls testphp.vulnweb.com | grep -a -i \=http | qsreplace 'http://evil.com' | while read host do; do curl -s -L $host -I | grep "evil.com" && echo -e "$host \033[0;31mVulnerable\n"; done
```

Instalação das dependências:

```bash
go install github.com/tomnomnom/qsreplace@latest
sudo mv ~/go/bin/qsreplace /usr/bin/
```

No lugar do endereço "http://evil.com" podemos também utilizar serviços de webhook, onde devemos ver a requisição chegando:

- <https://app.interactsh.com/>
- <https://webhook.site/>

Outra possibilidade é o uso da biblioteca HTTP Server do Python:

```bash
python3 -m http.server 9090
```
