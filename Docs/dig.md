# DIG

Ferramenta utilizada para efetuar a enumeração de DNS

Para levantar os nameservers:

```bash
dig -t ns site.com
```

```bash
dig -t mx site.com
```

Para forçar a transferência de zona:

```bash
dig -t axfr site.com @ns1.site.com
```

```bash
dig -t axfr site.com @ns2.site.com
```

Extraindo endereços A:

```bash
$ dig tesla.com +short
23.9.66.10
104.119.104.74
184.85.228.70
23.201.26.71
184.30.18.203
96.16.108.43
```
