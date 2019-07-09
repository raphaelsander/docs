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
