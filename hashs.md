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