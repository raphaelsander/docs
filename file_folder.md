# Arquivos

Criar arquivo:

``touch nomedoarquivo.txt``

Exibir arquivo:

``cat nomedoarquivo.txt``

Exibir arquivo de traz para frente:

``tac nomedoarquivo.txt``

Exibir um número limitado de linhas em um arquivo:

``head -n 2`` Será exibido apenas as duas primeiras linhas.

Exinir um número limitado de linhas no final de um arquivo:

``tail -n 2`` Será exibido apenas as duas últimas linhas.

Exibir um arquivo em tempo real:

``tail -f /var/log/apache2/access.log`` Muito utilizado para arquivos de log.
