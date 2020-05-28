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
