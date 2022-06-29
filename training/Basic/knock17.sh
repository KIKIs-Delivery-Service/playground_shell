#! /bin/bash

#課題17：要素数10の整数型の配列を宣言し、i番目の要素の初期値をiとし、順に値を表示するプログラムを作成せよ。

element=10

array=()
for ((i = 0; i < element; i++)); do
    array+=("${i}")
done

for item in ${array[*]}; do
    echo "${item}"
done