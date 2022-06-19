# Ansible

Hello World com Ansible:

```bash
ansible -vvvv wordpress \
  -u vagrant \
  --private-key .vagrant/machines/wordpress/virtualbox/private_key \
  -i hosts -m shell \
  -a 'echo Hello, World'
```

``-vvvv`` --> verbosity mode nível 4 (ótimo para debug)  
``wordpress`` --> grupo de hosts que queremos rodar o comando  
``-u vagrant`` --> qual nome do usuário  
``--private-key <PATH>`` --> a chave privada (e evitar passar senha na linha de comando)  
``-i hosts`` --> informamos o arquivo de inventário para ele conferir os hosts que configuraremos  
``-m shell`` --> informamos o módulo que executaremos: shell  
``-a 'echo Hello, World'`` --> quais os argumentos que estamos passando: echo Hello, World (comando que eu executaria direto no bash)
