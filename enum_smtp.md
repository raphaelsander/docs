# ENUM SMTP

A porta padrão do SMTP é a 25.  

Para verificar se há alguma porta 25 aberta na rede:  
```bash
nmap -v --open -p25 -Pn 192.168.0.0/24
```

---

Para iniciar devemos conectar na porta 25 do alvo através do NC:  

```bash
nc -vn 192.168.0.109 25
```

---

Comando para verificar a existência de um usuário:  
```smtp
VRFY root
```
Caso o usuário exista irá retornar uma saída parecida com essa:  
```smtp
252 2.0.0 root
```

---

Comando para verificar a existência de um usuário:  
```smtp
VRFY inexistente  
```
Caso o usuário não exista irá retornar uma saída parecida com essa:  
```smtp
550 5.1.1 <inexistente>: Recipient address rejected: User unknown.
```
