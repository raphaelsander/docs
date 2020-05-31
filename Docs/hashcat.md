# Hashcat

Concatenar wordlists compactadas e o Hashcat:

```bash
zcat /usr/share/wordlists/rockyou.txt.gz | hashcat -m0 hashes_md5.txt
```

---

Força bruta em hash Linux md5crypt:

```bash
hashcat -m500 -a0 -o cracked.txt hash /usr/share/wordlists/sqlmap.txt -O
```

```bash
$ cat hash
$1$t2gEU.Q/$vyBxDLNgISKrdezaIS3.7/
```

**-o** ==> Irá escrever a senha no arquivo cracked.txt;  
**-O** ==> Para otimizar o hardware;  
**-m500** ==> Tipo do hash [md5crypt, MD5 (Unix), Cisco-IOS $1$ (MD5)];  
**-a0** ==> Tipo de ataque, utilizado quando fornece wordlist.

---

Força bruta em hash Linux sha512crypt:

```bash
hashcat -m1800 -a0 -o cracked.txt hash '/mnt/Dados/weakpass_2a' -O
```

```bash
$ cat hash
$6$LBh9do8.BDzrV0zM$vlP9JZJtfidW3RI3kredxhKXvBuRT4p/TU3B8qti7oiXCiW5p1ARj2zyCHGkIOoGG0vOTNr0JQqGtdObkwtRP1
```

**-m1800** ==> Tipo do hash [sha512crypt $6$, SHA512 (Unix)].

---

**$1** = Algoritmo de hash MD5 (-m500).  
**$2** = Algoritmo de hash Blowfish (-m3200).  
**$2a** = Algoritmo de hash eksblowfish.  
**$5** = Algoritmo de hash SHA-256 (-m1400).  
**$6** = Algoritmo de hash SHA-512 (-m1800).
