# bruteforce-salted-openssl

Esse programa permite o brute force em arquivos que foram encriptados pelo openssl.

Instalação:

```
┌──(bl4ckc47㉿kali)-[~]
└─$ sudo apt install bruteforce-salted-openssl
```

Uso básico:

Exemplo:

```
┌──(bl4ckc47㉿kali)-[~]
└─$ cat lab3.txt.enc
U2FsdGVkX19mmFpHlaahBa+bNAf9QncLX7YUxfBuC8xqsV4g1aYYy+j05lOSHmYM
VqHSuI3xgJh5Lv6TIPG41+zSJybiT2yEHBX9hK6dn3I=

┌──(bl4ckc47㉿kali)-[~]
└─$ cat lab3.txt.enc | base64 -d > lab3.txt

┌──(bl4ckc47㉿kali)-[~]
└─$ file lab3.txt
lab3.txt: openssl enc'd data with salted password

┌──(bl4ckc47㉿kali)-[~]
└─$ bruteforce-salted-openssl -1 -d sha256 -c aes-256-cbc -f /usr/share/wordlists/rockyou.txt file.enc
```

**-1** ==> Para o programa após achar a primeira possível senha.
**-c** ==> Cifra
**-f** ==> Wordlist
**-d** ==> Digest

Script para fazer brute force, passando pelas várias cifras e disgests:

```bash
#!/bin/bash

mkdir -p results

for digest in $(cat digests.txt); do
    for cipher in $(cat ciphers.txt); do
        echo "######### $cipher - $digest #########" >> results/$cipher_$digest.txt
        bruteforce-salted-openssl -1 -d $digest -c $cipher -f /usr/share/wordlists/rockyou.txt lab3.txt &>> results/$cipher_$digest.txt
    done
    echo "######### $cipher - $digest #########"
    grep -E '(#########|Password candidate:|Password not found.)' results/$cipher_$digest.txt
done

grep -RE '(#########|Password candidate:)'
```
