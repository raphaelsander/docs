# Ansible

## Instalação

### Ubuntu

```bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

Referência: <https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu>

## Comandos

Verificar versão:

```bash
ansible --version
```

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

Provisionamento simples passando arquivo de playbook:

```bash
ansible-playbook provisioning.yml -u vagrant -i hosts --private-key .vagrant/machines/wordpress/virtualbox/private_key
```
