# Usuários  

Exibir todos os usuários:  
```bash
cat /etc/passwd
```

Adicionar um usuário:  
```bash
adduser nomedousuario
```

Deletar um usuário:  
```bash
deluser nomedousuario
```

Definir uma senha para o usuário:  
```bash
passwd nomedousuario
```

Entrar no terminal com um usuário específico:  
```bash
su nomedousuario
```

Adicionar o usuário ao grupo de sudoers:  
```bash
adduser nomedousuario sudo
```

Retirar o usuário do grupo de sudoers:  
```bash
deluser nomedousuario sudo
```

Outra maneira de alterar se um usuário é sudoers ou não é editando o arquivo **/etc/sudoers**.

Verificar as autenticações realizadas por cada usuário:  
```bash
cat /var/log/auth.log
```
