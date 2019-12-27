# Redes

## IFCONFIG

Para exibir informações de rede:

```sh
ifconfig
```

Para fixar um IP e uma máscara em um determinado adaptador:

```sh
ifconfig eth0 10.0.1.50 netmask 255.255.0.0
```

---

## Rotas

Para exibir as rotas e o Gateway:

```sh
route
```

Para exibir as rotas sem resolver os nomes:

```sh
route -n
```

Para remover a rota padrão(Gateway):

```sh
route del default
```

Para adicionar uma rota padrão com o Gateway:

```sh
route add default gw 192.168.0.1
```

---

## DHCP e Estático

Para pegar as configurações do DHCP da rede:

```sh
dhclient eth0
```

Exemplo de arquivo de rede para endereçamento DHCP:

```sh
auto eth0
iface eth0 inet dhcp
```

*Necessário reiniciar o serviço **networking**:*

```sh
/etc/init.d/networking restart
```

OU

```sh
service networking restart
```

Exemplo de arquivo de rede para endereçamento estático:

```config
auto eth0
iface eth0 inet static
address 192.168.1.100
netmask 255.255.255.0
gateway 192.168.1.1
```

*Necessário reiniciar o serviço **networking**:*

```sh
/etc/init.d/networking restart
```

OU

```sh
service networking restart
```

---

## NETSTAT

Listar portas abertas TCP:

```sh
netstat -lt
```

Listar portas abertas UDP:

```sh
netstat -lu
```

Listar portas abertas pelo número:

```sh
netstat -lnt
```

Listar portas abertas e exibir o programa:

```sh
netstat -lntp
```
