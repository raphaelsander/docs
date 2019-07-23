# JOHN THE RIPPER

## Quebra de senha no Linux
Concatenar o arquivo **/etc/passwd** e **/etc/shadow**:
unshadow /etc/passwd /etc/shadow >> 2crack

Para quebrar a senha dos usuários:
john 2crack

Diretório de wordlist padrão:
/usr/share/john/password.lst

Podemos ver o número de linhas dessa wordlist da seguinte forma:
wc -l password.lst

Alterando o arquivo /etc/john/john.conf podemos adicionar rules para criação de wordlists mutáveis.
Ex.:
$[0-9]$[0-9] ==> Adiciona dois numeros no final da palavra.
^[0-9] ==> Adiciona um número no começo da palavra.

Utilizando wordlist:
john --wordlist=words.txt --rules --stdout > mutacao.txt
