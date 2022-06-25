#! /bin/bash

# 課題40:整数値を入力させ、その値が偶数ならばeven、奇数ならばoddと表示するプログラムを作成せよ。

read -r -p "偶数か奇数か見定めてやろう：" num

if [ $((num%2)) == 0 ]; then
    echo "even"
else
    echo "odd"
fi