#!/bin/bash

echo " "
echo -e "\e[33m###########################################"
echo -e "\e[33m#     DNS ENUMERATE - BlackCat - v0.1     #"
echo -e "\e[33m###########################################"
echo " "

if [ $# -ne 2 ]; then
	echo -e "\e[31;1mUse: $0 alvo.com.br wordlist_dns.txt"
    echo " "
    exit 1
else
	echo -e "\e[31;1mName Servers:"
    echo -ne "\e[0m"
	host -t ns $1 | cut -d " " -f 4
    echo " "
	
    echo -e "\e[31;1mMail Servers:"
    echo -ne "\e[0m"
	host -t mx $1 | cut -d " " -f 7
    echo " "
	
    echo -e "\e[31;1mZone Transfer:"
    echo -ne "\e[0m"
	for x in $(host -t ns $1 | cut -d " " -f 4); do
		host -l $1 $x | grep "has address"
	done
    echo " "

    echo -e "\e[31;1mBrute Force:"
    echo -ne "\e[0m"
    for y in $(cat $2); do
        host $y.$1 | grep "has address"
    done
    echo " "
fi
