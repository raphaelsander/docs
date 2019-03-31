# NC
Pode ser usado: nc | ncat | netcat.

Escaneando portas:  
``nc -vnz 172.16.1.5 19-30`` Será escaneado da porta 19 atá a 30.  
``nc -vnz 172.16.1.5 22`` Será escaneado somente a porta 22.

Vericando whois pelo NC:  
``nc -v 200.160.2.3 43  
globo.com``
* A porta 43 é utilizada pelo WHOIS.
* O IP 200.160.2.3 é do registro.br.
