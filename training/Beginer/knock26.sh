#! /bin/bash

# 課題26:整数値を入力させ、その値が1ならone、2ならtwo、3ならthree、それ以外ならothersと表示するプログラムをswicth-case文を使って作成せよ。

read -r -p "入力した数値を調べてやろう: " num

case ${num} in
    1)
        echo "One";;
    2)
        echo "Two";;
    3)
        echo "Three";;
    *)
        echo "other";;
esac
