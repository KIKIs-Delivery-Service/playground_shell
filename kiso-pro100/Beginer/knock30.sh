#! /bin/bash

# 課題30:整数値を入力させ、その個数だけ*を表示するプログラムを作成せよ。入力値が0以下の値の場合は何も書かなくてよい。

read -r -p "頼む、整数値を入力してくれ！: " num

if [ "${num}" -gt 0 ]; then
    for ((i = 1; i <= "${num}"; i++)); do
        echo -n "*"
    done
    echo #改行のため
fi