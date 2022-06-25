#! /bin/bash

# 課題54:まずデータの個数を入力させ、次にデータの個数だけ整数値を入力させる。
# この入力データの中で最大値と最小値を求め表示するプログラムを作成せよ。データの個数は100個までとする。
# なお、データの個数とデータはファイルからリダイレクトで入力させればよいので、入力のためのメッセージは不要である（実行例を参照すること）。

# 【実行例、データファイルは下のリンクから取得せよ】
# $ ./knock54 < small.data
# 最小値 = 128, 最大値 = 962
# $ ./knock54 < middle.data
# 最小値 = 20, 最大値 = 988
# $ ./knock54 < large.data
# 最小値 = 5, 最大値 = 996
# $

echo "1番目の引数は「${1}」"

echo "1番目の引数で指定されたデータファイルを読み込みました"
while read line; do
    echo $line
done < $1
array=($(cat ${1}))
echo "データファイルの中身を配列に格納しました"
echo "配列の要素数は${#array[*]}"
echo "配列の中身は${array[*]}"

max=${array[0]}
min=${array[0]}
for index in ${array[*]}; do
    if [ ${index} -gt ${max} ]; then
        max=${index}
    fi
done
for index in ${array[*]}; do
    if [ ${index} -lt ${min} ]; then
        min=${index}
    fi
done
echo "最大値は${max}"
echo "最小値は${min}"