# Redes

Para exibir informações de rede:  
``$ ifconfig``

Para fixar um IP e uma máscara em um determinado adaptador:  
``$ ifconfig eth0 10.0.1.50 netmask 255.255.0.0``

Para pegar as configurações do DHCP da rede:  
``$ dhclient eth0``

Para exibir as rotas e o Gateway:  
``$ route``

Para remover a rota padrão(Gateway):  
``$ route del default``

Para adicionar uma rota padrão com o Gateway:  
``$ route add default gw 192.168.0.1``

Exemplo de arquivo de rede para endereçamento DHCP:  
```sh
iface eth0 inet DHCP
```

Exemplo de arquivo de rede para endereçamento estático:  
```sh
iface eth0 inet static
address 192.168.1.100
netmask 255.255.255.0
```
