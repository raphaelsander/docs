# PATTERN_OFFSET

Utilizado para encontrar o OFFSET exato do buffer overflow.

Caminho da aplicação:

/usr/share/metasploit-framework/tools/exploit/pattern_create.rb

Caso não esteja nesse diretório você pode procurar pela aplicação da seguinte forma:

```bash
locate pattern_create
```

Para identificar basta utilizar:

```bash
pattern_offset.rb 39694438
```

Mesmo estando em hexa o pattern_offset será capaz de identificar em qual byte o EIP é atingido.
