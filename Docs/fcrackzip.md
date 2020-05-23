# FCRACKZIP

-b: para usar algoritmos de força bruta.  
-D: para usar um dicionário.  
-B: executa um pequeno benchmark.  
-c: especifica o conjunto de caracteres.  
-h: mostra a mensagem de ajuda.  
-Version: mostra a versão deste programa.  
-V: valida ou verifica o algoritmo.  
-v: para o modo detalhado.  
-p: para usar uma string como senha.  
-l: para fornecer um comprimento específico para a senha.  
-u: para eliminar senhas erradas.  
-m: para especificar o número do método.  

Efetuando benchmark:
```bash
fcrackzip -B
```

Para testar senhas numéricas:
```bash
fcrackzip -b -c '1' file.zip
```

Para testar senhas com letras minúsculas:
```bash
fcrackzip -b -c 'a' file.zip
```

Para testar senhas com letras maiúsculas:
```bash
fcrackzip -b -c 'A' file.zip
```

Para testar senhas com caracteres especiais:
```bash
fcrackzip -b -c '!' file.zip
```

Para testar senhas com caracteres alfanuméricos e especiais:
```bash
fcrackzip -b -c 'A1a!' file.zip
```

Testando com tamanho de senha definida:
```bash
fcrackzip -b -v -c 'a' -l 1-8 -u file.zip
```

Testar quebra de senha com wordlist:
```bash
fcrackzip -D -p rockyou.txt -u file.zip
```
