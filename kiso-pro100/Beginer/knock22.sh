#! /bin/bash

# 課題22:整数値を入力させ、その値が-10以下、または、10以上であればOKと表示するプログラムを作成せよ。

read -r -p "-10以下または10以上ならおk: " num

if [ "$num" -ge 10 ] || [ "$num" -le -10 ]; then
    echo "おk"
else
    echo "ダメです"
fi
