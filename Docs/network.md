# Redes

## Subrede IP

### Máscaras de Subrede para Endereços IPv4 Classes A, B e C

Lembre-se que a primeira subrede também é conhecida como subrede ou subnet zero (all zero), já a última subrede é chamada de “all one subnet” ou sub-rede de broadcast.

Além disso, existem duas maneiras de se calcular quantas subredes IP podemos utilizar, porém isso será explicado no final do artigo.

Agora vamos estudar as subredes possíveis para cada Classe de Endereço IP.

### Máscaras de Subrede para Classe A

Um detalhe interessante é que aprendendo as máscaras de subrede para Endereços IP Classe A você também vai aprender para as demais classes, isso porque na verdade é tudo “quase a mesma coisa” em termos matemáticos.

A divisão de endereços IP em classes é uma coisa dos primórdios da Internet e atualmente não se utilizam mais classes ou esse conceito, a rede é na realidade “Classless” ou “Sem Uso de Classes” (mas isso é assunto para outro artigo).

Voltando ao foco do artigo, uma rede classe A utiliza 8 bits “1” na sua máscara de rede/subrede padrão que é 255.0.0.0 ou o prefixo /8.

Portando podemos emprestar bits para subrede do nono bit da máscara até o trigésimo segundo, porém tradicionalmente emprestamos até o trigésimo primeiro bit.

Em muitas bibliografias você vai ver emprestado até o trigésimo bit (redes /30), pois utilizar redes /31 é uma coisa relativamente recente.

Redes /32 são utilizadas também para endereçar interfaces de Loopback em roteadores e switches L3, vou explicar mais sobre as redes /31 e /32 no final do artigo como um “Bônus”.

Veja abaixo TODAS as subredes possíveis com uma rede IP classe A.

|:                         Classe A – Padrão 255.0.0.0 com perfixo /8                                  :|||||
|--------------------------------------------|-----------------|---------|----------------|-----------------|
| Bits emprestados                           | Máscara         | Prefixo | Subredes (2^n) | Hosts ((2^n)-2) |
| 1                                          | 255.128.0.0     | /9      | 2              | 8388606         |
| 2                                          | 255.192.0.0     | /10     | 4              | 4194302         |
| 3                                          | 255.224.0.0     | /11     | 8              | 2097150         |
| 4                                          | 255.240.0.0     | /12     | 16             | 1048574         |
| 5                                          | 255.248.0.0     | /13     | 32             | 524286          |
| 6                                          | 255.252.0.0     | /14     | 64             | 262142          |
| 7                                          | 255.254.0.0     | /15     | 128            | 131070          |
| 8                                          | 255.255.0.0     | /16     | 256            | 65534           |
| 9                                          | 255.255.128.0   | /17     | 512            | 32766           |
| 10                                         | 255.255.192.0   | /18     | 1024           | 16382           |
| 11                                         | 255.255.224.0   | /19     | 2048           | 8190            |
| 12                                         | 255.255.240.0   | /20     | 4096           | 4094            |
| 13                                         | 255.255.248.0   | /21     | 8192           | 2046            |
| 14                                         | 255.255.252.0   | /22     | 16384          | 1022            |
| 15                                         | 255.255.254.0   | /23     | 32768          | 510             |
| 16                                         | 255.255.255.0   | /24     | 65536          | 254             |
| 17                                         | 255.255.255.128 | /25     | 131072         | 126             |
| 18                                         | 255.255.255.192 | /26     | 262144         | 62              |
| 19                                         | 255.255.255.224 | /27     | 524288         | 30              |
| 20                                         | 255.255.255.240 | /28     | 1048576        | 14              |
| 21                                         | 255.255.255.248 | /29     | 2097152        | 6               |
| 22                                         | 255.255.255.252 | /30     | 4194304        | 2               |
| 23                                         | 255.255.255.254 | /31     | 8388608        | 2 (*)           |

### Máscaras de Subrede para Classe B

Nas redes classe B são utilizados 16 bits “1” na sua máscara de rede/subrede padrão que é 255.255.0.0 ou o prefixo /16.

Portanto o empréstimo de bits para subrede inicia no décimo sétimo bit, indo até o trigésimo primeiro bit e com as mesmas recomendações para classe A.

Vamos abaixo analisar a tabela com TODAS as subredes possíveis para redes classe B.

Classe B – Padrão 255.255.0.0 com perfixo /16
Bits emprestados	Máscara	Prefixo	Subredes (2n)	Hosts (2n-2)
1	255.255.128.0	/17	2	32766
2	255.255.192.0	/18	4	16382
3	255.255.224.0	/19	8	8190
4	255.255.240.0	/20	16	4094
5	255.255.248.0	/21	32	2046
6	255.255.252.0	/22	64	1022
7	255.255.254.0	/23	128	510
8	255.255.255.0	/24	256	254
9	255.255.255.128	/25	512	126
10	255.255.255.192	/26	1024	62
11	255.255.255.224	/27	2048	30
12	255.255.255.240	/28	4096	14
13	255.255.255.248	/29	8192	6
14	255.255.255.252	/30	16384	2
15	255.255.255.254	/31	32768	2 (*)

### Máscaras de Subrede para Classe C

Nas redes classe C são utilizados 24 bits “1” na sua máscara de rede/subrede padrão que é 255.255.255.0 ou o prefixo /24.

Portanto as subredes em uma rede IP classe C iniciam no vigésimo quinto bit e terminam no trigésimo primeiro, com as mesmas recomendações das classes A e B.

Veja abaixo a tabela completa de subredes IPv4 para endereços Classe C.

Classe C – Padrão 255.255.255.0 com perfixo /24
Bits emprestados	Máscara	Prefico	Subredes  (2n)	Hosts (2n-2)
1	255.255.255.128	/25	2	126
2	255.255.255.192	/26	4	62
3	255.255.255.224	/27	8	30
4	255.255.255.240	/28	16	14
5	255.255.255.248	/29	32	6
6	255.255.255.252	/30	64	2
7	255.255.255.254	/31	128	2 (*)

### Considerações sobre Subredes IPv4 /31 e /32

Cuidado apenas com a rede com um “*” que são as /31 (255.255.255.254), pois o número de subredes é calculado com a fórmula de 2^n (n=bits 1), mas os hosts são 2, o que pela fórmula de hosts daria zero (2^n-2 / com n=bits zero da máscara).

Isso é uma exceção que foi definida na RFC 3021, portanto para utilizar essas máscaras na prática é preciso ver se o roteador ou switch L3 suporta esse padrão.

Além disso, máscaras /32 (255.255.255.255 – chamadas de “host subnet”) podem ser utilizadas para endereçar um host específico, como por exemplo, uma interface loopback de um roteador Cisco, conforme exemplo abaixo:

```cisco
router(config)#interface loopback 0
router(config-if)#ip address 172.16.1.1 255.255.255.255
router(config-if)#end
router#
```

---

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
