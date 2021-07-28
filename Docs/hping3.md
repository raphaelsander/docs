# HPING3

Envio de um pacote de sicronismo em uma determinada porta do alvo:

```bash
hping3 --syn -c 1 -p 80 alvo.com
```

Caso o pacote tenha sido aceito o servidor irá retornar uma flag SA(SYN/ACK)
Caso o pacote tenha sido rejeitado o servidor irá retornar uma flag RA(RST/ACK)

---

Caso o firewall esteja configurado para rejeitar conexão TCP será retornado:

``
ICMP Port Unreachable from ip=xxx.xxx.xxx.xxx name=UNKNOWN
``

Exemplo de regra de firewall:

```bash
iptables -A INPUT -p tcp --dport 80 -j REJECT
```

---

Caso o Firewall esteja configurado para dropar conexão TCP não será retornado nada.

Exemplo de regra de firewall:

```bash
iptables -A INPUT -p tcp --dport 80 -j DROP
```

---

Exemplo de regra de firewall:

```bash
iptables -A INPUT -p tcp --dport 80 -j REJECT --reject-with tcp-reset
```

Nesse caso da regra acima o hping3 vai retornar uma flag RA(RST/ACK), ou seja, irá parecer que a porta está fechada, mas o firewall está filtrando.

---

**Porta aberta** = SYN/ACK(flag[SA])  
**Porta fechada** = RST/ACK(flag[RA])  
**Porta em drop** = Sem resposta  
**Porta em reject** = Destination Port Unreachable  
**Reject com RST** = Responde com RST/ACK(flag[RA])
