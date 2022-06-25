#! /bin/bash

# 課題28:整数値を入力させ、その値の階乗を表示するプログラムを作成せよ。ただし、0以下の値を入力した場合は1と表示する。

read -r -p "階乗を求めてやろうではないか: " num

if [ "${num}" -gt 0 ]; then
    sum=1
    for ((i = 1; i <= "${num}"; i++)); do
        ((sum *= i))
    done
    echo "${sum}"
else
    echo 1
fi
