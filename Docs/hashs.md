# HASH

## MD5

```bash
echo -n "HASH" | md5sum
```

*O parâmetro **n** evita a quebra de linha*

## SHA1

```bash
echo -n "HASH" | sha1sum
```

## SHA256

```bash
echo -n "HASH" | sha256sum
```

## SHA512

```bash
echo -n "HASH" | sha512sum
```

## Base64 (B64)

### Codificar

```bash
echo -n "HASH" | base64
```

### Decodificar

```bash
echo -n "HASH" | base64 -d ==> Decodifica
```

## Quebra de hash

1. Verificar o tipo de hash através da ferramenta hash-identifier ou hashid.  
2. Pesquise esse hash no Google e veja se tem algum site indexado com ele tarvés do findmyhash.  
*Um site muito bom para quebra de hash é o <https://md5decrypt.net> e <https://hashkiller.co.uk>.*  
3. Caso não encontre nada, utilize ferramentas de quebra, como john e hashcat.
