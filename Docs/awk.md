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

## Calculo de Média

Em alguns casos nos deparamos com logs onde não temos a média, o que não acostuma acontecer em alguns softwares como o ``ping`` ou ``iperf3``, entretanto em alguns momentos se faz necessário caso não queira fazer o uso do Excel para isso. Vamos pegar como exemplo o dados abaixo.

```bash
$ cat dados.log
2022-12-15T18:50:30 976 Mbits/s
2022-12-15T18:50:31 971 Mbits/s
2022-12-15T18:50:32 956 Mbits/s
2022-12-15T18:50:33 986 Mbits/s
2022-12-15T18:50:34 945 Mbits/s
2022-12-15T18:50:35 904 Mbits/s
2022-12-15T18:50:36 993 Mbits/s
2022-12-15T18:50:37 983 Mbits/s
2022-12-15T18:50:38 982 Mbits/s
2022-12-15T18:50:39 912 Mbits/s
2022-12-15T18:50:40 939 Mbits/s
```

Para isso podemos concatenar a saída do comando ``cat`` para o ``awk``, somando a segunda coluna com a variável ``$2`` e depois dividindo pelo número de valores somados, como mostra o comando.

```bash
$ cat dados.log | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }'
958.818
```
