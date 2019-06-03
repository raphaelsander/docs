# PING

Ferramenta para identificar hosts ativos.

Uso básico do ping:  
```bash
ping 192.168.0.100
```

---

Para especificar o número de pacotes:  
```bash
ping -c3 192.168.0.100
```
*Nesse comando será enviado apenas 3 pacotes para o alvo.*

---

Script básico para varer a rede através do ping:  
```bash
for ip in $(seq 1 254);do ping -c1 192.168.0.$ip | grep "64 bytes";done
```

Lembrando que o ping utiliza o protocolo **ICMP**.  
Consequentemente algum firewall pode estar bloqueando o protocolo ICMP.
