# GDB

Abrir um programa:
gdb ./app

Ver funções:
(gdb) info function

Verificar para o que serve cada função:
man strcmp
man gets

Efetuar um disassemble:
(gdb) disas main

Executar o programa dentro do debbuger:
(gdb) run

Passando comandos de arquivo via execução:
(gdb) run < comandos.txt

Passando comandos via Python:
(gdb) run < <(python -c 'print "A" * 408')
python -c 'print "A" * 412 + "\x4c\x85\x04\x08"' | ./app

Vizualizar os registradores:
(gdb) info register

Definir um Break Point:
(gdb) b* 0x0804853d

Analizando a memória após setar o break point:
(gdb) x/20xw $esp ==> Exibe em HEX
(gdb) x/20xb $esp ==> Exibe em HEX
(gdb) x/20s $esp ==> Exibe em string

Deletar break point:
(gdb) d 1

Deletar todos os break points:
(gdb) d

Em python de HEX to DEC:
a = "198"
print int(a, 16)

Output: 408 bytes
