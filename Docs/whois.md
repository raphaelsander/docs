# Whois

IANA(www.iana.org) é a máxima autoridade na organização e atribuição de endereços IP.  
Root Servers - www.iana.org/domains/root/servers  
RIRs - www.iana.org/numbers  
Whois IANA - whois.iana.org

Há um client whois na maioria das distribuições

Para utilizar o whois:

```bash
whois site.com.br
```

Para perguntar para algum servidor específico:

```bash
whois desec.com.br -h whois.registro.br
```

*Necessário que a autoridade tenha a mesma sobre o domínio, ou seja, não é possível fazer uma pesquisa do whois de um domínio brasileiro no orgão do Japão.
