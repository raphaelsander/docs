# CUT

O CUT é um software para tratamento de texto e diferente do GREP que trabalha apenas com linhas, ele pode delimitar colunas e efetuar filtros. Bem similar ao AWK, porém com comandos mais fáceis e saídas mais limitadas.

---

Exibindo primeira coluna de um arquivo, delimitando as colunas por "**:**":

```bash
cut -d : -f1 /etc/passwd
```

Exibindo mais de uma coluna de um arquivo, delimitando as colunas por "**:**":

```bash
cut -d : -f1,6 /etc/passwd
```
