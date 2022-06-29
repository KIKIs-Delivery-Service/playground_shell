#! /bin/bash

#課題18：要素数10の整数型の配列を宣言し、整数値を入力させ、すべての配列の要素を入力値として、すべての要素の値を表示するプログラムを作成せよ。

read -r -p "input number: " num

array=()
for ((i = 0; i < 10; i++)); do
    array+=("$num")
done

for item in ${array[*]}; do
    echo "$item"
done