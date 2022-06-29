#! /bin/bash

#初期値を0以外にしとく
num=1
while [ "$num" -ne 0 ]; do
    read -r -p "0を入力するまで終わらないぜ: " num
done
