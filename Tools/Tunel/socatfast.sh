#!/bin/bash

# Necessario ter instalado o socat em seu computador e no alvo.
# sudo apt install socat
# Para verificar a porta aberta utilize o comando netstat -nlpt.

echo -n "Digite a porta que voce deseja abrir: "
read publicport
echo -n "Digite a porta que voce deseja usar localmente: "
read localport
echo -n "Digite seu IP: "
read iplocal
echo -n "Qual IP roda o servico no alvo, que sera redirecionado: "
read iplocalalvo
echo -n "Qual a porta do servico a ser redirecionado: "
read portlocalalvo
echo " "

echo "#!/bin/bash" >> redir.sh
echo "while true;" >> redir.sh
echo "do" >> redir.sh
echo "socat TCP4:$iplocal:$publicport TCP4:$iplocalalvo:$portlocalalvo;" >> redir.sh
echo "done" >> redir.sh

echo "[+] Arquivo redir.sh criado com sucesso."

echo "[+] Escutando na porta $publicport e conexao local através da porta $localport."
socat TCP4-LISTEN:$publicport,reuseaddr,fork TCP4-LISTEN:$localport,reuseaddr

rm redir.sh
