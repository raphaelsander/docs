# Snap

## Snapd API

Criando redirecionamento TCP para interface Unix Socket, somente localhost:

```bash
sudo apt update && sudo apt install socat -y
sudo socat TCP-LISTEN:4444,fork,bind="127.0.0.1" UNIX-CONNECT:/run/snapd.socket
```

**4444** ==> Porta TCP que será aberta.  
**127.0.0.1** ==> IP onde será feito o bind, cuidado ao utilizar outros endereços além do localhost.  
**/run/snapd.socket** ==> Diretório onde se encontra o arquivo Unix Socket.

*Após executar esse comando e deixar em execução o socat, você poderá utilizar programas que não possuem suporte ao Unix Socket, por exemplo o Postman.*

---

Criando redirecionamento TCP para interface Unix Socket, todos os endereços:

```bash
sudo socat TCP-LISTEN:4444,fork UNIX-CONNECT:/run/snapd.socket
```

---

Efetuando requisição com curl no redirecionamento criado pelo socat:

```bash
sudo apt update && sudo apt install jq -y
curl -sS -X GET http://<IP>:<PORTA>/v2/apps | jq -r '.result[].name'
```

*Faça a alteração dos valores de IP e PORTA de acordo com os valores utilizados na execução do socat.*

*O aplicativo jq serve para efetuar o parseamento do json que retorna da requisição.*

---

Efetuando requisição com curl diretamente para o Unix Socket:

```bash
sudo curl -sS -X GET --unix-socket /run/snapd.socket http://localhost/v2/apps | jq -r '.result[].name'
```

Comandos para ajudar em resolução de problemas:

```bash
netstat -ant # exibe apenas portas TCP
netstat -an # exibe todas as portas, em especial UNIX SOCKET
```

---

Referências:

- [https://snapcraft.io/docs/snapd-api](https://snapcraft.io/docs/snapd-api)
- [https://snapcraft.io/docs/using-the-api](https://snapcraft.io/docs/using-the-api)
