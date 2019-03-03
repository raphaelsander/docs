# Usuários  
Exibir todos os usuários:  
``cat /etc/passwd``

Adicionar um usuário:  
``adduser nomedousuario``

Deletar um usuário:  
``deluser nomedousuario``

Definir uma senha para o usuário:  
``passwd nomedousuario``

Entrar no terminal com um usuário específico:  
``su nomedousuario``

Adicionar o usuário ao grupo de sudoers:  
``adduser nomedousuario sudo``

Retirar o usuário do grupo de sudoers:  
``deluser nomedousuario sudo``

Outra maneira de alterar se um usuário é sudoers ou não é editando o arquivo /etc/sudoers.

Verificar as altenticações realizadas por cada usuário:  
``cat /var/log/auth.log``
