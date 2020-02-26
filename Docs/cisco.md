# Cisco Comandos

## Comandos de Navegação

- Para voltar um nível: exit
- Voltando ao nível raiz(Router#): end
- Help dos comandos: ?
- Desbloquear o terminal: CTRL+SHIFT+6

## Comandos de Configuração

Router>enable => Router# *Modo administrador.  
Router#show running-config => *Exibe a configuração em execução.  
Router#show startup-config => *Exibe a configuração de inicialização.  
Router#show version => *Exibe as informações do roteador.  
Router#show protocol => *Exibe se as interfaces estão ativadas.  
Router#show ip interface brief => *Também exibe se as interfaces estão ativadas.  
Router#show ip route => *Exibe a tabela de rotas.  

Router#config terminal => Router(config)# *Acessa o modo de configuração.  
Router(config)#enable password qwer1234 => *Define a senha de administrador.  
Router(config)#interface Se0/0/0 => Router(config-if)# *Acessa o modo de configuração da interface.  
Router(config-if)#ip address 10.0.0.1 255.255.255.252 => *Seta o IP/Máscara na interface selecionada.  
Router(config-if)#clock rate 2000000 => *Seta o clock da rede.  
Router(config-if)#no shutdown => *Ativa a interface selecionada.  

Router(config)#ip route IP_REDE_DESTINO MASCARA_DESTINO Se0/0/0 => Rota estática *Cria uma rota para a rede destino com base na interface.  
Router(config)#ip route IP_REDE_DESTINO MASCARA_DESTINO 10.0.21.2 => Rota estática *Cria uma rota para a rede destino com base no IP.  
Router(config)#ip route 0.0.0.0 0.0.0.0 {address | interface} => Rota padrão *Cria uma rota padrão.  
Router(config)#router rip && version 2 && network 192.168.0.0 => Rota dinâmica *Cria uma rota dinâmica.  

Router#copy running-config startup-config => *Copia as configurações em execução para a inicialização.  

## DHCP

Router(config)#ip dhcp excluded-address 192.168.1.1 192.168.1.50  
Router(config)#ip dhcp excluded-address 192.168.1.100  

Router(config)#ip dhcp pool NOME_DA_LAN  
Router(dhcp-config)#network 192.168.1.0 255.255.255.0  
Router(dhcp-config)#default-router 192.168.1.1  
Router(dhcp-config)#dns-server 198.0.0.2  
Router(dhcp-config)#domain-name span.com (normalmente não usa)  

## ENCAPSULATION

Switch(config-if)#interface fa0/5  
Switch(config-if)#switchport mode trunk  

Router(config)#interface fa0/1.10  
Router(config-subif)#encapsulation dot1Q 10  
Router(config-subif)#ip address 172.17.10.1 255.255.255.0  

Router(config)#interface fa0/1.20  
Router(config-subif)#encapsulation dot1Q 20  
Router(config-subif)#ip address 172.17.20.1 255.255.255.0  

Switch(config)#interface Fa0/3  
Switch(config-if)#switchport mode access  
Switch(config-if)#switchport access vlan 10  

## ACL

Router(config)#access-list 1 deny 192.168.10.5 (para bloquear a rede 192.168.10.0/0.0.0.255)  
Router(config)#access-list 1 permit any  
Router(config)#interface Gig0/0  
Router(config-if)#ip access-group 1 out  
