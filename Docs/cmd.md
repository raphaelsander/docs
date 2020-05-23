# CMD

Ver o o diretório atual:

```cmd
echo %cd%
```

Voltar um diretório:

```cmd
cd ..
```

Acessar uma pasta:

```cmd
cd Windows
```

Acessar a raiz do Windows:

```cmd
cd \
```

Vizualisar o que possui no diretório:

```cmd
dir
```

Criar pasta:

```cmd
mkdir nomedapasta
```

Criar arquivo:

```cmd
echo Janeiro > meses.txt
```

Limpar a tela:

```cmd
cls
```

Visualizar arquivo:

```cmd
type meses.txt
```

Inserir mais conteúdo em um arquivo:

```cmd
echo Fevereiro >> meses.txt
```

Copiar arquivo:

```cmd
copy meses.txt novo.txt
```

Mover arquivo:

```cmd
move novo.txt ../
```

Apagar arquivo:

```cmd
del novo.txt
```

Ocultar arquivo:

```cmd
attrib +h meses.txt
```

Listando itens ocultos:

```cmd
dir /a
```

Desocultando arquivo:

```cmd
attrib -h meses.txt
```

Remover diretório não vazios:

```cmd
rmdir /s nomepasta
```

Pesquisar arquivo:

```cmd
dir /S pesquisa.txt
```

Buscando todos os arquivos com determinado formato:

```cmd
dir /S *.txt
dir /S *.docx
```
