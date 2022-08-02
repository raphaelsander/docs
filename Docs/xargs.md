# xargs

O xargs é muito utilizado para carregar listas para dentro de outro programa com possibilidade de paralelismo.

```bash
xargs -a domains.txt -I@ -P10 sh -c 'python3 paramspider.py -d "@"'
```

**-a** ==> Carrega a lista do arquivo **domains.txt**  
**-I** ==> Indica o caractere especial à ser reservado e substituído  
**-P** ==> Executa o paralelismo, nesse caso de 10 itens da lista
