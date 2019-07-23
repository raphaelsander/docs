# DIG

Ferramenta utilizada para efetuar a enumeração de DNS

Para levantar os nameservers:
dig -t ns site.com
dig -t mx site.com

Para forçar a transferência de zona:
dig -t axfr site.com @ns1.site.com
dig -t axfr site.com @ns2.site.com
