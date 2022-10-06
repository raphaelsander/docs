# Password no Linux

Arquivo que lista todos os usuários e suas configurações:

/etc/passwd

*No passado também era utilizado para salvar as senhas.*

Atualmente as senhas dos usuários ficam em formato de hash no arquivo **/etc/shadow**.
Somente o usuário com direito de sudoers pode visualizar o shadow.

## Estrutura do arquivo shadow

``USER:$ID$SALT$PASS``

*Maiores detalhes com o comando **man crypt**.*

### ID - Método

- 1 => MD5
- 2a => Blowfish
- 5 => SHA-256
- 6 => SHA-512
