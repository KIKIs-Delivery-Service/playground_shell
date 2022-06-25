#! /bin/bash

read -r -p "繰り返したい回数: " num

i=0
while [ $i -lt "$num" ]; do
    echo "while文"
    ((i++))
done

for ((i = 0; i < num; i++)); do
    echo "for文"
done
