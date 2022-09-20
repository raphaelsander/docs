# JOHN THE RIPPER

## Quebra de senha no Linux

Concatenar o arquivo **/etc/passwd** e **/etc/shadow**:

```bash
unshadow /etc/passwd /etc/shadow >> 2crack
```

Para quebrar a senha dos usuários:

```bash
john 2crack
```

Diretório de wordlist padrão:  
**/usr/share/john/password.lst**

Podemos ver o número de linhas dessa wordlist da seguinte forma:

```bash
wc -l password.lst
```

Alterando o arquivo **/etc/john/john.conf** podemos adicionar rules para criação de wordlists mutáveis.

Ex.:  
**\$[0-9]$[0-9]** ==> Adiciona dois numeros no final da palavra.  
**^[0-9]** ==> Adiciona um número no começo da palavra.

Utilizando wordlist:

```bash
john --wordlist=words.txt --rules --stdout > mutacao.txt
```

## Quebra de GPG

Vamos levar em consideração algum arquivo que foi criptografado com chava assimétrica, primeiro precisamos converter o arquivo GPG para hash.

Converter GPG para hash:

```bash
gpg2john lab1.gpg > hash
```

Iniciar a quebra do hash:

```bash
john --wordlist=rockyou.txt hash
```

Referência: <https://www.ubuntuvibes.com/2012/10/recover-your-gpg-passphrase-using-john.html>
