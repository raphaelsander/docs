# AWK

O AWK é um software para tratamento de texto e diferente do GREP que trabalha apenas com linhas, ele pode delimitar colunas e efetuar filtros.

---

Exibindo primeira coluna de um arquivo, delimitando as colunas por "**:**":

```bash
awk -F : '{print $1}' /etc/passwd
```

Exibindo mais de uma coluna de um arquivo, delimitando as colunas por "**:**":

```bash
awk -F : '{print $1,$6}' /etc/passwd
```

Formatando a saída:

```bash
awk -F : '{print "Usuario:"$1 " - Diretorio:"$6}' /etc/passwd
```

Passando variáveis ou variáveis de ambiente para o awk:

```bash
for x in *iperf.log; do
    y=$(echo $x | cut -d"_" -f1)
    cat $x | grep receiver | awk -v y="$y" '{print y ";" $7 " " $8}'
done >> results.csv
```
