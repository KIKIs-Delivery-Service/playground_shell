#! /bin/bash

read -r -p "imput number: " num

echo "count up"
for ((i = 0; i <= num; i++)); do
    echo "$i"
done

echo "----------"
echo "count down"
j=$num
while [ "$j" -ge 0 ] ; do
echo "$j"
((j--))
done

echo "----------"
echo "count up by 2"
k=0
while [ $k -le "$num" ] ; do
echo "$k"
((k = k+2))
done