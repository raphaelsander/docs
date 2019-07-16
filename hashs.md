# HASH

###MD5
echo -n "HASH" | md5sum
*O parâmetro **n** evita a quebra de linha*

###SHA1
echo -n "HASH" | sha1sum

###SHA256
echo -n "HASH" | sha256sum

###SHA512
echo -n "HASH" | sha512sum

###B64
echo -n "HASH" | base64 ==> Codifica
echo -n "HASH" | base64 -d ==> Decodifica

## Quebra de hash
1- Verificar o tipo de hash através da ferramenta hash-identifier.
2- Pesquise esse hash no Google e veja se tem algum site indexado com ele.
*Um site muito bom para quebra de hash é o https://md5decrypt.net e https://hashkiller.co.uk.*
Também tente utilizar o findmyhash.
3- Caso não encontre nada, utilize ferramentas de quebra, como john e hashcat.
