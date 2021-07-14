# GIT

## Dicionário

**HEAD**: Estado atual do nosso código, ou seja, onde o Git os colocou.  
**Working tree**: Local onde os arquivos realmente estão sendo armazenados e editados.  
**index**: Local onde o Git armazena o que será commitado, ou seja, o local entre a working tree e o repositório Git em si.

Referência: <https://git-scm.com/book/pt-br/v2/Fundamentos-de-Git-Gravando-Altera%C3%A7%C3%B5es-em-Seu-Reposit%C3%B3rio>

Utilize o site <http://git-school.github.io/visualizing-git> para testar seus comandos Git.

---

### Iniciar repositório local:

```bash
$ git init
```

### Clonar repositório remoto:

```bash
$ git clone [CAMINHO] [NOME_DA_PASTA]
```

**CAMINHO** - Caminho pode ser desde uma pasta compartilhada (local, vide "**Criar um server git local**") como uma URL ou conexão SSH.  
**NOME_DA_PASTA** - Diretório onde o projeto vai ser clonado. Pode ser omitido e irá criar uma pasta com o nome do repositório remoto.

### Criar um server git local:

```bash
$ git init --bare
```

### Adicionando repositório remoto:

```bash
$ git remote add [NOME_SIMBOLICO] [CAMINHO]
```

**NOME_SIMBOLICO** - Pode ser qualquer nome para identificar, por convenção normalmente é **origin**.  
**CAMINHO** - Caminho pode ser desde uma pasta compartilhada (local, vide "**Criar um server git local**") como uma URL ou conexão SSH.

### Verificando repositórios remotos adicionados:

```bash
$ git remote
```

### Configurar email e nome:

```bash
$ git config --local user.name "Seu nome aqui"
$ git config --local user.email "seu@email.aqui"
```

**--local** - Se você quer atribuir as configurações para o repositório em questão.  
**--global** - Se você deseja atribuir as configurações globalmente para todos os repositórios.

A configuração local tem prioridade sobre a global.

### Corrigindo email e/ou nome da última alteração:

```bash
$ git commit --amend --author="Nome Sobrenome <email@dominio.com>"
```

### Verificando configuração:

```bash
$ git config user.email
$ git config user.name
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

### Verificar histórico:

```bash
$ git log
```

*Modo simplificado de apenas uma linha:*

```bash
$ git log --oneline
```

*Modo completo com exibição das alterações:*

```bash
$ git log -p
```

Para mais opções acesse o site [DevHints](https://devhints.io/git-log)

### Baixar alterações do repositório remoto:

```bash
$ git pull
$ git pull origin master
```

### Enviar alterações para o repositório remoto:

```bash
$ git push origin master
```

*Onde **origin** normalmente é o repositório remoto e **master** é o branch.*

Para servidores Gerrit o comando muda um pouquinho:

```bash
$ git push origin HEAD:refs/for/master
```

---

## Branchs

As branchs são bifurcações no códico com o intuito de organizar. Há vários modelos de organização de branchs e podem ser verificados pesquisando pelo termo **Git Flow** no Google.

Criar uma nova ramificação:

```bash
$ git branch release_2.1
```

Criar uma nova ramificação e passar para ela:

```bash
$ git checkout -b release_2.1
```

Mudar para uma ramificação existente:

```bash
$ git checkout release_2.1
```
