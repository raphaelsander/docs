#!/bin/bash

file=sheet.csv
delimiter=","

for line in $(cat $file); do
	imsi=$(echo $line | awk -F "$delimiter" '{print $1}')
	k=$(echo $line | awk -F "$delimiter" '{print $2}')
	opc=$(echo $line | awk -F "$delimiter" '{print $3}')

	cat <<-EOF
		{
		    imsi: "$imsi",
		    K: "$k",
		    opc: "$opc",
		},
	EOF
done
