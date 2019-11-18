# NETBIOS | SMB

Netbios | Server Message Block  
Protocolo para compartilhamento de arquivos.  
Porta 139 (netbios) e porta 445 (smb).

**NULL SESSION** = Sessão criada sem autenticação de usuário e senha.

**IPC$** = permite que usuários anônimos executem determinadas atividades.

---

Para escaneamento podemos utilizar o seguinte comando NMAP:

```bash
nmap -v --open -sS  -Pn -p 139,445 192.168.1.0/24
```

---

## Enumeração

### Através do Windows

```bat
nbtstat -A 192.168.1.100
```

Com isso você conseguirá trazer os grupos.

```bat
net use \\192.168.1.100 "" /u:""
```

A primeira aspas duplas é para a senha e a segunda é para o usuário.
Como não estamos informando nada, será feito o NULL SESSION.
Também é valido o teste com credenciais padrão.
Ex.:

```bat
net use \\192.168.1.100 "" /u:administrador
```

```bat
net use \\192.168.1.100 "" /u:administrator
```

Caso retorne 'Comando concluído com êxito.' significa que é permitido NULL SESSION.

Irá mostrar se está conectado:

```bat
net use
```

Irá mostrar os compartilhamentos efetuados pelo alvo, além de informar a versão do serviço:

```bat
net view
```

Irá mapear na unidade X: do Windows:

```bat
net use x: \\192.168.1.100\home
```

Podemos conferirir as informações de conexão:

```bat
net use
```

Apaga a conexão:

```bat
net use \\192.168.1.100 /delete
```

Para apagar o mapeamento de unidade de rede:

```bat
net use x: /delete
```

*É interessante apagar uma conexão para agilizar outra.*

---

### Através do Linux

Para listar as máquinas disponíveis na rede:

```bash
sudo nbtscan -r 192.168.0.0/24
```

*Necessário efetuar a instalação do pacote nbtscan.*

A enumeração no Linux pode ser feita através do smbclient.  
Para ver as opções:

```bash
smbclient --help
```

*Necessário efetuar a instalação do pacote smbclient.*

Para listar os compartilhamentos sem senha de uma máquina:

```bash
smbclient -L //192.168.0.114 -N
```

Listar os compartilhamentos passando um usuário sem senha:

```bash
smbclient -L //192.168.0.114 -N -U administrador
```

Para conectar ao diretório compartilhado:

```bash
smbclient //192.168.0.114/Público -N
```
