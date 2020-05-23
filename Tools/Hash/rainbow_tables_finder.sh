#!/bin/bash

echo -n "Digite o hash: "
read hash
echo -n $hash | grep $hash $1;
