# SEARCHSPLOIT

Ferramenta utilizada para a pesquisa de exploits públicos no <exploit-db.com>.

Procurar exploit:

```bash
searchsploit wordpress
searchsploit slmail
```

Filtrando a procura de exploit:

```bash
searchsploit kernel | grep "3.0"
```

Localizar o exploit na máquina:

```bash
locate 643.c
```

Para maiores detalhes e argumentos acesse:

<https://www.exploit-db.com/searchsploit>

Alguns Exploits são para Windows e nesse caso é necessário utilizar o Wine para executar esses Exploits:

```bash
sudo apt install mingw32  
i586-mingw32msvc-gcc 646.c -l ws2_32 -o 646.exe  
sudo dpkg --add-architecture i386 && apt update && apt install wine32  
wine 646.exe
```
