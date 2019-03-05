# Arquivos  
Criar arquivo:  
``touch nomedoarquivo.txt``

Remover arquivo:  
``rm nomedoarquivo.txt``

Remover um arquivo de forma forçada:  
``rm -f nomedoarquivo.txt``

Para localizar um arquivo ou pasta:  
``locate "nomedoarquivo"``

Exibir arquivo:  
``cat nomedoarquivo.txt``
``more nomedoarquivo.txt``
``less nomedoarquivo.txt``

Exibir arquivo de traz para frente:  
``tac nomedoarquivo.txt``

Exibir um número limitado de linhas em um arquivo:  
``head -n 2`` Será exibido apenas as duas primeiras linhas.

Exinir um número limitado de linhas no final de um arquivo:  
``tail -n 2`` Será exibido apenas as duas últimas linhas.

Exibir um arquivo em tempo real:  
``tail -f /var/log/apache2/access.log`` Muito utilizado para arquivos de log.

# Pastas  
Verificar diretório atual:  
``pwd``

Listar pastas e arquivos do diretório:  
``ls``

Listar pastas e arquivos inclusive ocultos do diretório:  
``ls -a``

Listar pastas e arquivos inclusive ocultos do diretório com todas as informações:  
``ls -la``

Remover uma pasta de arquivos:  
``rm -R nomedapasta``

Criar diretório:  
``mkdir nomedapasta``
