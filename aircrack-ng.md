# AIRCRACK-NG

## AIRMON-NG

Checando processos conflitantes:
airmon-ng check

Matando processos conflitantes:
airmon-ng check kill

Iniciando modo monitor:
airmon-ng start wlan0
*O nome da interface pode variar.*

Setando canal específico:
iwconfig wlan0mon channel 1

## AIRODUMP-NG

Ver informações das redes wireless:
airodump-ng wlan0mon

Filtrando por canal:
airodump-ng -c 10 wlan0mon

Filtrando por BSSID:
airodump-ng --bssid 00:11:22:AA:BB:CC

## MAC Changer

Clonando MAC de cliente para conectar em redes com MAC Filter:
ifconfig wlan0 down
macchanger -m AA:BB:CC:DD:EE:FF:99 wlan0
ifconfig wlan0 up
service NetworkManager
