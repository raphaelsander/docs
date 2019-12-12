# FTP

FTP é a sigla para File Transfer Protocol, um termo que, traduzido para o português, significa Protocolo de Transferência de Arquivos. Ele é basicamente um tipo de conexão que permite a troca de arquivos entre dois computadores conectados.

---

Escaneando por porta FTP aberta:

```bash
nmap -v --open -sS -Pn -p 21 172.16.1.0/24
```

---

Acessando um serviço via aplicação FTP:

```bash
ftp 172.16.1.2
```

---

Acessando o serviço de FTP através do NC:

```bash
nc -v 172.16.1.5 21
```

```ftp
USER root
PASS senhasecreta
```

---

Acessando via usuário anônimo:

```bash
ftp 172.16.1.2
```

```ftp
Name: anonymous
Password: anonymous
```
