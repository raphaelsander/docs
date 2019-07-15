# HYDRA

Ferramenta de brute force online.

Uso do hydra com usuário:
hydra -v -l user -P wordlist.txt 192.168.0.100 ftp
hydra -v -l root -P wordlist.txt 192.168.0.100 ssh

Uso do hydra com wordlist de usuário:
hydra -v -L users.txt -P wordlist.txt 192.168.0.100 21
