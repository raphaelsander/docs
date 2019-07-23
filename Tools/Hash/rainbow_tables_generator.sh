#!/bin/bash

for i in $(cat $1); do
    echo -n $i":"
    echo -n $i | md5sum | cut -d " " -f1;
done
