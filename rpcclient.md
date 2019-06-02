# RPCCLIENT

Ferramenta para SMB

Conectar ao compartilhamento SMB sem usuário e senha.
rpcclient -U "" -N 192.168.0.114

Para listar todos os usuários:
rpcclient $> enumdomusers

Para listar os compartilhamentos:
rpcclient $> netshareenum

Para listar todos os compartilhamentos:
rpcclient $> netshareenumall

Para mostrar informações sobre o domínio:
rpcclient $> querydominfo

Para trazer informações sobre o usuário:
rpcclient $> queryuser Administrador

Para fechar a conexão do rpcclient:
rpcclient $> exit

Passando um usuário na conexão:
rpcclient -U "Administrador" -N 192.168.0.114
