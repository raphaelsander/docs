# ldd

O comando ldd no Linux (List Dynamic Dependencies) fornece uma lista das dependências dinâmicas que um determinado programa precisa.  
Ele irá retornar o nome da biblioteca compartilhada e a sua localização esperada no disco.

```bash
$ ldd /bin/bash
libreadline.so.4 => /lib/libreadline.so.4 (0x4001c000)
libhistory.so.4 => /lib/libhistory.so.4 (0x40049000)
libncurses.so.5 => /lib/libncurses.so.5 (0x40050000)
libdl.so.2 => /lib/libdl.so.2 (0x40096000)
libc.so.6 => /lib/libc.so.6 (0x40099000)
/lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)
```

Neste exemplo, o programa do bash necessita de todas estas bibliotecas para funcionar.

O comando ldd é importante para determinarmos qual são as bibliotecas necessárias de um executável.

Quando acontece um erro durante a execução de um programa, reclamando a falta de uma biblioteca ou versão incorreta, o programa ldd pode ser utilizado para se determinar qual é a biblioteca e a versão dela que deve ser instalada para o correto funcionamento do programa.

O programa que configura os diretórios que contém as bibliotecas compartilhadas é o **ldconfig**.
