# GREP

O GREP é um programa para filtrar strings de um determinado arquivo de texto.  
Dessa forma ele exibe somente as linhas desejadas.

---

Para pesquisar uma string dentro de um arquivo:

```bash
cat /etc/passwd | grep "/bin/bash"
```

```bash
grep "/bin/bash" /etc/passwd
```

---

É possível efetuar a pesquisa em mais de um arquivo:

```bash
grep "pesquisa" file1 file2
```

---

Para informar a linha da palavra pesquisada:

```bash
grep "pesquisa" file -n
```

---

Para pesquisar uma string dentro de um arquivo e enviar para outro arquivo:

```bash
cat /etc/passwd | grep "/bin/bash" > shell.txt
```

```bash
grep "/bin/bash" /etc/passwd > shell.txt
```

---

Eliminar linhas que contenham uma determinada string:

```bash
cat /etc/passwd | grep -v "nologin"
```

```bash
grep -v "nologin" /etc/passwd
```

---

Filtragem com mais de uma string:

```bash
cat /etc/passwd | grep -v "nologin" | grep -v "/bin/false"
```

```bash
grep -v "nologin" /etc/passwd | grep -v "/bin/false"
```

```bash
egrep -v "nologin|/bin/false"
```

---

Pesquisa recursiva:

```bash
grep -R "nologin"
```
