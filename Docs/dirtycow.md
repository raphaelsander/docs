# DIRTYCOW

É uma falha para escalonamento de privilégios.

O Exploit possui uma falha e logo após ser aplicado é necessário executar o seguinte comando:

```bash
echo 0 > /proc/sys/vm/dirty_writeback_centisecs
```
