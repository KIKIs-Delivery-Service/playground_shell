#! /bin/bash

# 課題25:整数値を入力させ、その値が-10未満ならrange 1、-10以上0未満であればrange 2、0以上であればrange 3、と表示するプログラムを作成せよ。

read -r -p "どのrangeに属しているか調べてやろう: " num

if [ "${num}" -lt -10 ]; then
    echo "range 1"
elif [ "${num}" -ge -10 ] && [ "${num}" -lt 0 ]; then
    echo "range 2"
else
    echo "range 3"
fi
