#! /bin/bash

# 課題46:神山美術館の入場料金は、一人600円であるが、5人以上のグループなら一人550円、
# 20人以上の団体なら一人500円である。人数を入力し、入場料の合計を計算するプログラムを作成せよ。

read -r -p "入場人数：" num

# ※人数がマイナスの時は考慮しない
if [ ${num} -lt 5 ]; then
    echo "料金は$((600*${num}))円"
elif [ ${num} -ge 5 ] && [ ${num} -lt 20 ]; then
    echo "料金は$((550*${num}))円"
else
    echo "料金は$((500*${num}))円"
fi
