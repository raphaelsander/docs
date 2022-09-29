# Tipos de Scanner

## TCP Connect

* Completa o three way handshake
* "Barulhento" e facilmente detectável
* Gera mais trafego

Exemplos:

```bash
nmap -sT
nmap -sV
```

## Half Open / Syn Connect

Envia um SYS e analisa a resposta, se for SYS/ACK a porta está aberta e então já é enviado um RST sem completar o handshake.

* Não completa o three way handshake
* Consome menos tráfego
* Nível de detecção menor comparado com o TCP connect.

Exemplo:

```bash
nmap -sS
```
