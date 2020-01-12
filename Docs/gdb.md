# GDB

Abrir um programa:

```bash
gdb ./app
```

Ver funções:

```gdb
(gdb) info function
```

Verificar para o que serve cada função:

```bash
man strcmp
```

```bash
man gets
```

Efetuar um disassemble:

```gdb
(gdb) disas main
```

Executar o programa dentro do debbuger:

```gdb
(gdb) run
```

Passando comandos de arquivo via execução:

```gdb
(gdb) run < comandos.txt
```

Passando comandos via Python:

```gdb
(gdb) run < <(python -c 'print "A" * 408')
```

```python
python -c 'print "A" * 412 + "\x4c\x85\x04\x08"' | ./app
```

Vizualizar os registradores:

```gdb
(gdb) info register
```

Definir um Break Point:

```gdb
(gdb) b* 0x0804853d
```

Analizando a memória após setar o break point:

```gdb
(gdb) x/20xw $esp ==> Exibe em HEX
(gdb) x/20xb $esp ==> Exibe em HEX
(gdb) x/20s $esp ==> Exibe em string
```

Pedir para ir à uma instrução expecífica:

```gdb
(gdb) set $pc = 0x4006c4
```

*Muito utilizando para bypass em comparações de valores.*

Deletar break point:

```gdb
(gdb) d 1
```

Deletar todos os break points:

```gdb
(gdb) d
```

Em python de HEX to DEC:

```python
a = "198"
print(int(a, 16))
```
