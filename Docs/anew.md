# anew

Este programa adiciona linhas do stdin para um arquivo, porém somente se essa linha não existir.

<https://github.com/tomnomnom/anew>

Instalação:

```bash
go install github.com/tomnomnom/anew@latest
sudo mv ~/go/bin/anew /usr/bin/
```

Uso básico:

```bash
cat newthings.txt | anew things.txt
```

*No comando acima, as linhas do arquivo **newthings.txt** serão adicionadas ao arquivo **things.txt** caso ela não exista.*

Enviando linhas adicionadas para outro arquivo:

```bash
cat newthings.txt | anew things.txt > added-lines.txt
```

*Linhas do arquivo **newthings.txt** que não existem no arquivo **things.txt** serão enviadas para o arquivo **added-lines.txt**.*
