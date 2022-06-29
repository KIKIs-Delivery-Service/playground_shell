#! /bin/bash

read -p 'input 1st number: ' num1
read -p 'input 2nd number: ' num2
echo "和: $(($num1+$num2))"
echo "差: $(($num1-$num2))"
echo "積: $(($num1*$num2))"
echo "商: $(($num1/$num2)), 余り: $(($num1%$num2))"
