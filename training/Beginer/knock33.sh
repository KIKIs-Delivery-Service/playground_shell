#! /bin/bash

# 課題33:整数値を入力させ、1から9まで、入力値以外を表示するプログラムを作成せよ。

read -r -p "1~9までの整数を入力せよ：" num
for ((i = 1; i <= 9; i++)); do
    if [ "${i}" ==  "${num}" ]; then
        echo #何も表示しないで改行のみ
    else
    echo "${i}"
    fi
done