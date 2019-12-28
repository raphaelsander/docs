# Analise de log

Arquivo de log para estudo:

```bash
wget www.grandbusiness.com.br/access.log
```

Mostrar o início do arquivo:

```bash
head access.log
```

Mostrar somente a primeira linha do arquivo:

```bash
head -n1 access.log
```

Trazer a primeira coluna do arquivo access.log, utilizando separador " "(espaço):

```bash
cat access.log | cut -d " " -f1
```

Trazer a primeira coluna do arquivo access.log, utilizando separador " "(espaço) e sem repetir linhas iguais:

```bash
cat access.log | cut -d " " -f1 | sort -u
```

Trazer a primeira coluna do arquivo access.log, utilizando separador " "(espaço), organizando de forma crescente e contando as linhas repetidas:

```bash
cat access.log | cut -d " " -f1 | sort | uniq -c
```

Trazer a primeira coluna do arquivo access.log, utilizando separador " "(espaço), organizando de forma crescente, contando as linhas repetidas e eliminando as linhas repetidas:

```bash
cat access.log | cut -d " " -f1 | sort | uniq -c | sort -un
```

Remover as linhas repetidas(u), organizar em ordem numérica(n) reversa(r):

```bash
sort -unr
```

Listar todas as linhas com "177.138.28.7" para levantar maiores informações do atacante:

```bash
cat access.log | grep "177.138.28.7"
```

Utilizar delimitador e exibir apenas um valor para a segunda coluna:

```bash
cat access.log | grep "177.138.28.7" | cut -d '"' -f2 | sort -uniq
```

Procurar por determinado diretório, resposta ou cliente:

```bash
cat access.log | grep "177.138.28.7" | grep "nessus"
```

```bash
cat access.log | grep "177.138.28.7" | grep "nikto"
```

```bash
cat access.log | grep "177.138.28.7" | grep "Restrito"
```

```bash
cat access.log | grep "177.138.28.7" | grep "/robots.txt" | grep -v "404"
```
