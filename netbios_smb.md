# NETBIOS | SMB

Netbios | Server Message Block
Protocolo para compartilhamento de arquivos.
Porta 139 (netbios) e porta 445 (smb)

NULL SESSION = Sessão criada sem autenticação de usuário e senha.

IPC$ = permite que usuários anônimos executem determinadas atividades.

Para escaneamento podemos utilizar o seguinte comando NMAP:
nmap -v --open -sS  -Pn -p 139,445 192.168.1.0/24

## Enumeração

### Através do Windows

nbtstat -A 192.168.1.100
Com isso você conseguirá trazer os grupos.

``net use \\192.168.1.100 "" /u:""``
A primeira aspas duplas é para a senha e a segunda é para o usuário.
Como não estamos informando nada, será feito o NULL SESSION.
Também é valido o teste com credenciais padrão.
Ex.: 
``net use \\192.168.1.100 "" /u:administrador``
``net use \\192.168.1.100 "" /u:administrator``
Caso retorne 'Comando concluído com êxito.' significa que é permitido NULL SESSION.

``net use`` Irá mostrar se está conectado.
``net view`` Irá mostrar os compartilhamentos efetuados pelo alvo, além de informar a versão do serviço.

``net use x: \\192.168.1.100\home`` Irá mapear na unidade X: do Windows.
``net use`` Podemos conferirir as informações de conexão.

``net use \\192.168.1.100 /delete`` Apaga a conexão.
``net use x: /delete`` Para apagar o mapeamento de unidade de rede.
É interessante apagar uma conexão para agilizar outra.

### Através do Linux

Para listar as máquinas disponíveis na rede:
sudo nbtscan -r 192.168.0.0/24
*Necessário efetuar a instalação do pacote nbtscan.*

A enumeração no Linux pode ser feita através do smbclient:
smbclient --help Para ver as opções.
*Necessário efetuar a instalação do pacote smbclient.*

Para listar os compartilhamentos sem senha de uma máquina:
smbclient -L //192.168.0.114 -N

Listar os compartilhamentos passando um usuário sem senha:
smbclient -L //192.168.0.114 -N -U administrador

Para conectar ao diretório compartilhado:
smbclient //192.168.0.114/Público -N


