#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Use: $0 http://sitealvo.com.br wordlist.txt"
    exit
fi

for string in $(cat $2); do
    code=$(curl -s -o /dev/null -w "%{http_code}" $1/$string/)

    if [ "$code" == "200" ]; then
        echo "Diretorio encontrado: $string"
    fi
done
