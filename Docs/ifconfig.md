# IFCONFIG

Exibir informações dos adaptadores de rede:

```bash
ifconfig
```

Para setar um IP e máscara:

```bash
ifconfig eth0 192.168.0.117 netmask 255.255.255.0
```

Trocar o MAC Address de um adaptador de rede:

```bash
ifconfig wlan0 down
ifconfig wlan0 hw ether 00:11:22:33:44:55
ifconfig wlan0 up
```
