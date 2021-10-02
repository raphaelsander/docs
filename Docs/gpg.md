# GPG - GNU Privacy Guard

Chaveiro público: <http://pgp.mit.edu>

Gerando par de chaves pública e privada com revogação:

```bash
gpg --full-generate-key
```

Listar as chaves:

```bash
gpg --list-keys
```

Listar chaves secretas:

```bash
gpg --list-secret-keys
```

Listar chaves por e-mail:

```bash
gpg --list-keys email@domain.com
```

Listar chave pelo ID:

```bash
gpg --list-keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Listar assinaturas:

```bash
gpg --list-sigs
```

Listar chaves em formato fingerprint:

```bash
gpg fingerprint
```

**Saída:** XXXX XXXX XXXX XXXX XXXX XXXX XXXX XXXX XXXX XXXX

Apagando chaves públicas:

```bash
gpg --delete-keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

*Caso exista alguma chave privada associada à essa chave pública, primeiro é necessário apagar a chave privada para que surja a permissão de apagar a chave pública.*

Editar uma chave existente:

```bash
gpg --edit-key email@domain.com
```

Revogar certificado:

```bash
gpg --gen-revoke email@domain.com
```

*Sempre gere a chave de revogação, mas guarde ela com cuidado.*  
*Após gerar chave de revogação, você terá que escrever em um arquivo e depois importar essa chave para revogar o certificado.*

```bash
gpg --import revoke.txt
```

Importar chave pública:

```bash
gpg --import key.pub
```

Assinar chave:

```bash
gpg --sign-key email@domain.com
```

Exportar chave pública:

```bash
gpg -a --export email@domain.com
```

ou

```bash
gpg -a --export XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Exportar chave pública e salvar em um arquivo:

```bash
gpg -a -o key.pub --export XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

ou

```bash
gpg -a -o key.pub --export email@domain.com
```

Exportar chave privada:

```bash
gpg -a -o key.key --export-secret-keys email@domain.com
```

Criptografando/assinando arquivo e salvando em base64:

```bash
gpg -e --sign --armor -r email@domain.com file.txt
```

**--armor** --> Responsável por salvar em base64

Descriptografando arquivo:

```bash
gpg -d -o file.txt file.txt.asc
```

Enviando chave pública para chaveiro público:

```bash
gpg --keyserver hkp://pgp.mit.edu --send-keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Buscando chave pública em chaveiro público:

```bash
gpg --keyserver hkp://pgp.mit.edu --search-keys email@domain.com
```

Atualizando chave revogada no chaveiro público:

```bash
gpg --keyserver hkp://pgp.mit.edu --send-keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```
