# SS

O comando **ss** é uma ferramenta usada para exibir informações relacionadas ao soquete de rede em um sistema Linux. A ferramenta exibe informações mais detalhadas do que o comando **netstat** que é usado para exibir conexões de soquete ativas.

Neste guia, vamos nos aprofundar e ver como o comando **ss** pode ser usado para exibir informações variadas de conexão de soquete no Linux.

---

Listando todas as conexões:

```bash
ss
```

Listando portas de escuta e não escuta:

```bash
ss -a
```

Listando soquetes de escuta:

```bash
ss -l
```

Listando todas as portas TCP:

```bash
ss -t
```

Listando todas as portas TCP de escuta:

```bash
ss -lt
```

Listando todas as portas TCP:

```bash
ss -ua
```

Listando todas as portas UDP de escuta:

```bash
ss -lu
```

Listando as portas mostrando o seu número ao invés do nome do protocolo:

```bash
ss -n
```

Exibir PID (IDs de processo) de soquetes:

```bash
ss -p
```

Para exibir um resumo:

```bash
ss -s
```

Exibir conexões de socket IPv4:

```bash
ss -4
```

Exibir conexões de socket IPv6:

```bash
ss -6
```

Filtrar conexões por número de porta:

```bash
ss -at '( dport = :22 or sport = :22 )'
```

```bash
ss -at '( dport = :ssh or sport = :ssh )'
```

**dport** ==> Porta de destino
**sport** ==> Porta de origem

Filtrando porta por estado:

```bash
ss -o state fin-wait-1
```

Opções de filtro:

- established
- syn-sent
- syn-recv
- fin-wait-1
- fin-wait-2
- time-wait
- closed
- close-wait
- last-ack
- listen
- closing
- all
- connected
- synchronized
- bucket
- big

Filtrando com base no endereço ou rede de destino:

```bash
ss dst 202.54.1/24
```
