# DD

O DD é um programa de clonagem que mantem as propriedades das partições clonadas, inclusive bits nulos são clonados.

Insira o cartão SD e/ou pendrive e verifique o nome do dispositivo (geralmente mmcblkX ou sdcX):

``sudo fdisk -l``

No meu caso, o cartão SD é /dev/mmsbkl0. Agora você tem que desmontar o dispositivo:

``sudo umount /dev/mmcblk0``

Agora, para criar uma imagem do dispositivo:

``sudo dd if=/dev/mmcblk0 of=~/sd-card-copy.img``

Isso vai demorar um pouco dependendo do tamanho do armazenamento clonado.

Escrevendo a imagem para um dispositivo:

``sudo dd if=~/sd-card-copy.img of=/dev/mmcblk0``

A operação de gravação é muito mais lenta que de leitura.