# Shodan
shodan.io

Esse site é um bot scanner que varre várias portas no mundo todo.
É necessário efetuar o cadastro para ter acesso à alguns filtros 
específicos.

Pesquisando câmeras em um país específico:
camera country:"BR"

Pesquisando um equipamento por país e cidade:
camera country:"BR" city:"São Paulo"

Pesquisa por sistema operacional:
os:"Windows" country:"BR"

Pesquisa por porta:
port:3389 country:"BR"

Pesquisa por IP:
ip:173.45.92.12

Pesquisa por bloco de rede:
ip:173.45.92.0/30

Pesquisa por hostname:
hostname:alvo.com.br

O Shodan exibe também a localização, porém essa localização não é exata 
e normalmente pega como base a localização do link que fornece a conexão 
para o alvo pesquisado.
