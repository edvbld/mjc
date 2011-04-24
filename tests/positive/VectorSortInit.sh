#!/bin/bash

i=0
max_num=$1
while [ $i -lt $max_num ] 
do
    echo "                    append($RANDOM)."
    let "i +=1"
done
