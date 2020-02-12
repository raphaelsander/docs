# Hashcat

Concatenar wordlists compactadas e o Hashcat:

```bash
zcat /usr/share/wordlists/rockyou.txt.gz | hashcat -m0 hashes_md5.txt
```
