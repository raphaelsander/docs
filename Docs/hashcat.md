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
