#!/bin/bash
for ip in $(seq $2 $3);
do
host $1.$ip
done
