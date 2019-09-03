# CRUNCH

Ferramenta para geração de wordlist.

Gerando senhas de 4 dígitos numérico:  
```bash
crunch 4 4 0123456789 -o pin.txt
```

Gerando senhas com máscara:  
```bash
crunch 10 10 -t usuario^%% -o pass_user.txt
```
*Exemplo de saída: usuario@56*

**@** = minuscula  
**,** = maiuscula  
**%** = numeros  
**^** = caracteres especiais  

## Charset

Caminho padrão do charset.lst: **/usr/share/crunch/charset.lst**

Utilizando charset:  
```bash
crunch 6 6 -f charset.lst numeric
```

### Charset Default
hex-lower:  
``
[0123456789abcdef]
``  
hex-upper:  
``
[0123456789ABCDEF]
``  

numeric:  
``
[0123456789]
``  
numeric-space:  
``
[0123456789 ]
``  

symbols14:  
``
[!@#$%^&*()-_+=]
``  
symbols14-space:  
``
[!@#$%^&*()-_+= ]
``  

symbols-all:  
``
[!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
``  
symbols-all-space:  
``
[!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]
``  

ualpha:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ]
``  
ualpha-space:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ ]
``  
ualpha-numeric:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]
``  
ualpha-numeric-space:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ]
``  
ualpha-numeric-symbol14:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=]
``  
ualpha-numeric-symbol14-space:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+= ]
``  
ualpha-numeric-all:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
``  
ualpha-numeric-all-space:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]
``  

lalpha                        = [abcdefghijklmnopqrstuvwxyz]
lalpha-space                  = [abcdefghijklmnopqrstuvwxyz ]
lalpha-numeric                = [abcdefghijklmnopqrstuvwxyz0123456789]
lalpha-numeric-space          = [abcdefghijklmnopqrstuvwxyz0123456789 ]
lalpha-numeric-symbol14       = [abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+=]
lalpha-numeric-symbol14-space = [abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+= ]
lalpha-numeric-all 	      = [abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
lalpha-numeric-all-space      = [abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]

mixalpha                   = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]
mixalpha-space             = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ]
mixalpha-numeric           = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]
mixalpha-numeric-space     = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ]
mixalpha-numeric-symbol14  = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=]
mixalpha-numeric-symbol14-space = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+= ]
mixalpha-numeric-all       = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
mixalpha-numeric-all-space = [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]

## SWEDISH CHAR-SUPPORT

### Uppercase
ualpha-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ]
``  
ualpha-space-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ ]
``  
ualpha-numeric-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789]
``  
ualpha-numeric-space-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789 ]
``  
ualpha-numeric-symbol14-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=]
``  
ualpha-numeric-symbol14-space-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+= ]
``  
ualpha-numeric-all-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
``  
ualpha-numeric-all-space-sv:  
``
[ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]
``  

### Lowercase
lalpha-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö]
``
lalpha-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö ]
``
lalpha-numeric-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789]
``
lalpha-numeric-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789 ]
``
lalpha-numeric-symbol14-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789!@#$%^&*()-_+=]
``
lalpha-numeric-symbol14-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789!@#$%^&*()-_+= ]
``
lalpha-numeric-all-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
``
lalpha-numeric-all-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäö0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]
``

### Mixcase
mixalpha-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ]
``
mixalpha-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ ]
``  
mixalpha-numeric-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789]
``  
mixalpha-numeric-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789 ]
``  
mixalpha-numeric-symbol14-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=]
``  
mixalpha-numeric-symbol14-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+= ]
``  
mixalpha-numeric-all-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/]
``  
mixalpha-numeric-all-space-sv:
``
[abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ0123456789!@#$%^&*()-_+=~`[]{}|\:;"'<>,.?/ ]
``  

## Crunch e outros aplicativos

Crunch e aircrack-ng:
crunch 2 4 abcdefghijklmnopqrstuvwxyz | aircrack-ng /root/Mycapfile.cap -e MyESSID -w-

Crunch e airolib-ng:
crunch 10 10 12345 --stdout | airolib-ng testdb -import passwd -
