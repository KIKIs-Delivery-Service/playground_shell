#! /bin/bash

read -p 'input number: ' num
if [ $num -gt 0 ]; then
    echo "positive"
elif [ $num -eq 0 ]; then
    echo "Zero"
else
    echo "negative"
fi