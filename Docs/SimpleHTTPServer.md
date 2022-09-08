# SimpleHTTPServer

<https://docs.python.org/3.10/library/http.server.html>

É um Web Server simples em Python capaz de colocar no ar uma aplicação rapidamente.  
Muito utilizado também em Pentest para enviar arquivos para um alvo.

Executando o SimpleHTTPServer na porta 80, Python2:

```bash
python -m SimpleHTTPServer 80
```
*Lembrando que todos os arquivos do diretório atual serão expostos.*

Executando o SimpleHTTPServer na porta 80, Python3:

```bash
python3 -m http.server 80
```
