# TRACEROUTE

Programa voltado para verificar a rota tomada por um determinado pacote.

Uso básico do traceroute:
traceroute www.alvo.com
* Ele utiliza o padrão UDP.

Para alterar o valor do TTL:
traceroute www.alvo.com -m 1
* Nesse caso haverá apenas um salto.

Para ir para um salto específico:
traceroute www.alvo.com -f 8

Para não resolver o nome e exibir apenas o IP:
traceroute www.alvo.com -n

Para enviar pacotes ICMP:
traceroute www.alvo.com -I

Para enviar pacotes TCP:
traceroute www.alvo.com -T

