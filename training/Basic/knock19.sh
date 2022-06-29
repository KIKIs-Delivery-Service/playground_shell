#! /bin/bash

#課題19：要素数5の整数型の配列を宣言し、すべての配列に対して順に入力された整数値を代入し、すべての要素の値を表示するプログラムを作成せよ。

array=()
for ((i = 0; i < 5; i++)); do
    read -r -p "input number: " num
    array+=("$num")
done

for item in ${array[*]}; do
    echo "$item"
done