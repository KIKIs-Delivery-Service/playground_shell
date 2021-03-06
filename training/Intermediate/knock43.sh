#! /bin/bash

# 課題43:2次方程式 ax^2 + bx + c = 0 （x^2はxの2乗の意味）の係数a, b, cを入力し、
# 2次方程式の解が2つの実数解か、重解か、2つの虚数解かを判別するプログラムを作成せよ。

#IFS=, を入れなければデフォルトで区切り文字は半角スペースとなる
IFS=, read -r -p "カンマ区切りで、係数 a b c に代入する数値を入力してください:" a b c
echo "2次方程式 ${a}x^2 + ${b}x + ${c} = 0 の判別式をDとすると"
((D=b*b-4*a*c))
if [[ "${D}" > 0 ]];then    #[]だと評価演算式が正しく機能しなかった。必ず[[]]にする必要がある。
    echo "D = ${D} > 0"
    echo "この2次方程式は2つの実数解を持ちます"
elif [[ "${D}" < 0 ]];then  #ここのエラーは無視してよい
    echo "D = ${D} < 0"
    echo "この2次方程式は2つの虚数解を持ちます"
else
    echo "D = 0"
    echo "この2次方程式は重解を持ちます"
fi

# 参考サイト
# [Bashシェルスクリプト上での”[..]”と”[[..]]”の違い](https://genzouw.com/entry/2020/06/09/083836/2041/#)