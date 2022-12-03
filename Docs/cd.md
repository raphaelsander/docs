# cd

Acessando um diretório absoluto, ou seja, é informado o caminho à partir da raiz:

```bash
# cd <diretório>
cd /tmp
```

Acessando um diretório relativo, normalmente usado para acessar diretórios filhos do atual:

```bash
# cd <diretório>
cd Desktop
```

*Note que não há uma barra (/) indicando a raiz do sistema.*

Voltando para o diretório anterior:

```bash
cd -
```

*Esse comando irá usar o variável de ambiente que estará com o valor do diretório anterior.*

Acessando o diretório do usuário atual:

```bash
cd ~
```

Voltando um diretório acima do atual:

```bash
cd ..
```

*O mesmo pode ser feito para acessar mais de um nível acima, por exemplo se eu necessitar subir dois níveis de pasta basta usar **../../**.*
