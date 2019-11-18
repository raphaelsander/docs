# SNMP

Simple Network Management Protocol.

Protocolo para gerenciamento de dispositivos em rede. Porta **161(UDP)**.

MIB - Management Information Base é uma base contendo informações normalmente relacionadas ao gerenciamento de redes.

---

## Exemplos de MIB

| MIB Number             | Type             |
|------------------------|------------------|
| 1.3.6.1.2.1.25.4.2.1.2 | Running Programs |
| 1.3.6.1.2.1.25.4.2.1.4 | Processes Path   |
| 1.3.6.1.2.1.25.2.3.1.4 | Storage Units    |
| 1.3.6.1.2.1.25.6.3.1.2 | Software Name    |
| 1.3.6.1.4.1.77.1.2.25  | User Accounts    |
| 1.3.6.1.2.1.6.13.1.3   | TCP Local Ports  |
| 1.3.6.1.2.1.25.1.6.0   | System Processes |

---

## Community

É um valor utilizado entre as partes do SNMP para recuperar as informações dos dispositivos.

Valores default:

- public
- private
- manager

---

## Scanner

```bash
nmap -v --open -sUV -p161 -Pn 192.168.0.0/24
```

Para efetuar o teste de community em um IP ou uma lista de IPs você pode utilizar o ONESIXTYONE:

```bash
onesixtyone -c community.txt -i IPs.txt
```

E em seguida podemos utilizar o SNMPWALK para listar uma community:

```bash
snmpwalk -c public -v1 192.168.0.106
```

Podemos especificar uma MIB:

```bash
snmpwalk -c public -v1 192.168.0.106 1.3.6.1.4.1.77.1.2.25
```

Para levantar informações de forma mais legível de um alvo utilize o snmp-check:

```bash
snmp-check -t 192.168.0.106
```
