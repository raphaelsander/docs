# theHarvester

Uso:

```bash
theHarvester -d alvo.com -g -s -v -r -n -c
```

**-g** ==> Utilizar Google Dorks  
**-s** ==> Utilizar o Shodan  
**-v** ==> Verify host name via DNS resolution and search for virtual hosts  
**-r** ==> Check for takeovers  
**-n** ==> Enable DNS server lookup, default False
**-c** ==> Perform a DNS brute force on the domain

Fazendo o filtro e exibindo apenas os domínios:

```bash
theHarvester -d alvo.com -g -s -v -r -n -c | grep "alvo.com" | cut -d":" -f1
```
