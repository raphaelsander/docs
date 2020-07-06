# WIRESHARK

Filtro por IP:  
``ip.addr == 192.168.0.200``

Filtro por mais de um IP:  
``ip.addr == 192.168.0.200 && ip.addr == 192.168.0.1``  
``ip.addr == 192.168.0.200 or ip.addr == 192.168.0.201``

Filtro por protocolo:  
``ftp && ip.addr == 192.168.0.200``

Filtro por IP origim:  
``ip.src == 192.168.0.200``

Filtro por IP de destino:  
``ip.dst == 192.168.0.200``

Pesquisa de string em pacotes TCP:  
``tcp contains PASS``  
``tcp contains USER``  
``tcp contains bomba``  

Pesquisa por requisições HTTP:  
``http.request``  

Pesquisa por string na URL de requisições HTTP:  
``http.request.uri.contains default``  
``http.request.uri.contains hacker``  

Pesquisa por conexões SYN ACK:  
``tcp.flags==0x12``  
``tcp.flags.syn==1 && tcp.flags.ack==1``  
*Normalmente utilizado para analisar capturas de portscan.* 

Filtros do exibição do Wireshark consulte:  
https://wiki.wireshark.org/DisplayFilters

Filtros de captura do Wireshark consulte:  
- https://wiki.wireshark.org/CaptureFilters
- https://www.hackingarticles.in/nmap-scans-using-hex-value-flags/
