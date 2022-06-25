#! /bin/bash

# 課題24:整数値を入力させ、その値が-10以上0未満、または、10以上であればOK、そうでなければNGと表示するプログラムを作成せよ。

read -r -p "-10以上0未満、または、10以上であればOK: " num

if [ "$num" -ge -10 ] && [ "$num" -lt 0 ] || [ "$num" -ge 10 ]; then
    echo "おk"
else
    echo "ダメです"
fi
