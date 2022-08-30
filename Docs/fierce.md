# FIERCE

Software utilizado para enumeração de DNS.

Para efetuar o levantamento dos nameservers via bruteforce:

```bash
fierce -dns alvo.com -w wordlist.txt
```

Filtrando brute force e exibindo apenas os subdomínios para uma possível wordlist:

```bash
for x in $(cat fierce_bruteforce.txt | grep Found | awk '{print $2}'); do echo ${x::-1}; done
```
