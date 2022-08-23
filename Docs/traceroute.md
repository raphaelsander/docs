# TRACEROUTE

Programa voltado para verificar a rota tomada por um determinado pacote.

Uso básico do traceroute:

```bash
traceroute www.alvo.com
```

*Ele utiliza o padrão UDP.*

Para alterar o valor do TTL:

```bash
traceroute www.alvo.com -m 1
```

*Nesse caso haverá apenas um salto.*

Para ir para um salto específico:

```bash
traceroute www.alvo.com -f 8
```

Para não resolver o nome e exibir apenas o IP:

```bash
traceroute www.alvo.com -n
```

Para enviar pacotes ICMP:

```bash
traceroute www.alvo.com -I
```

Para enviar pacotes TCP:

```bash
traceroute www.alvo.com -T
```
