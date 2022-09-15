# Arquivos e Pastas

## Arquivos

Criar arquivo:

```bash
touch nomedoarquivo.txt
```

Remover arquivo:

```bash
rm nomedoarquivo.txt
```

Remover um arquivo de forma forçada:

```bash
rm -f nomedoarquivo.txt
```

Para localizar um arquivo ou pasta:

```bash
locate "nomedoarquivo"
```

Exibir arquivo:

```bash
cat nomedoarquivo.txt
more nomedoarquivo.txt
less nomedoarquivo.txt
```

Exibir arquivo de traz para frente:

```bash
tac nomedoarquivo.txt
```

Exibir um número limitado de linhas em um arquivo:

```bash
head -n 2
```

*Será exibido apenas as duas primeiras linhas.*

Exinir um número limitado de linhas no final de um arquivo:

```bash
tail -n 2
```

*Será exibido apenas as duas últimas linhas.*

Exibir um arquivo em tempo real:

```bash
tail -f /var/log/apache2/access.log
```

*Muito utilizado para arquivos de log.*

## Pastas

Verificar diretório atual:

```bash
pwd
```

Listar pastas e arquivos do diretório:

```bash
ls
```

Listar pastas e arquivos inclusive ocultos do diretório:

```bash
ls -a
```

Listar pastas e arquivos inclusive ocultos do diretório com todas as informações:

```bash
ls -la
```

Remover uma pasta de arquivos:

```bash
rm -R nomedapasta
```

Criar diretório:

```bash
mkdir nomedapasta
```
