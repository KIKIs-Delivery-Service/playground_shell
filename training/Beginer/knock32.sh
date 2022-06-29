#! /bin/bash

# 課題32:1から20まで順に表示するが、5の倍数の場合は数字の代わりにbarと表示するプログラムを作成せよ。

for ((i = 1; i <= 20; i++)); do
    if [ $((i%5)) ==  0 ]; then
        echo "bar"
    else
    echo "${i}"
    fi
done