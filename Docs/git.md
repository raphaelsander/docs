# GIT

## Dicionário

**HEAD**: Estado atual do nosso código, ou seja, onde o Git os colocou.  
**Working tree**: Local onde os arquivos realmente estão sendo armazenados e editados.  
**index**: Local onde o Git armazena o que será commitado, ou seja, o local entre a working tree e o repositório Git em si.

Referência: <https://git-scm.com/book/pt-br/v2/Fundamentos-de-Git-Gravando-Altera%C3%A7%C3%B5es-em-Seu-Reposit%C3%B3rio>

---

### Iniciar repositório local:

```bash
$ git init
```

### Configurar email e nome:

```bash
$ git config --local user.name "Seu nome aqui"
$ git config --local user.email "seu@email.aqui"
```

## Verificar status do repositório:

Esse comando serve para verificar se há alguma alteração à ser salva ou algum arquivo que não está sendo versionado.

```bash
$ git status
```

```bash
$ git status -s
$ git status --short

M  README (Modificado)
MM Rakefile (Modificado após stage)
A  lib/git.rb (Adicionado ao stage)
M  lib/simplegit.rb (Modificado)
?? LICENSE.txt (Não versionado)
```

*Modo curto

### Adicionar arquivos para serem versionados:

```bash
$ git add [CAMINHO_ARQUIVO]
```

ou

```bash
$ git add .
```

*Para adicionar todos os arquivos não versionados naquele diretório.*

### Remover arquivos do versionamento:

```bash
$ git rm [CAMINHO_ARQUIVO]
```

### Salvar uma alteração:

```bash
$ git commit -m "Mensagem descritiva da alteração com convenção de somente uma linha"
```
