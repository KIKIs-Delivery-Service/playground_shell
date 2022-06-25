#! /bin/bash

# 課題21:整数値を入力させ、その値が5よりも大きく、かつ、20よりも小さければOKと表示するプログラムを作成せよ。

read -r -p "5より大きく20より小さければおk: " num

if [ "$num" -gt 5 ]; then
    if [ "$num" -lt 20 ]; then
        echo "おk"
    else
        echo "ダメです"
    fi
else
    echo "ダメです"
fi
