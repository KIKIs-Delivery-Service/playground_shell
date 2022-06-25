#! /bin/bash

# 課題53:自然数の入力値を素因数分解して結果を表示するプログラムを作成せよ。

read -r -p "お前の代わりに素因数分解をしてやろう…：" num

i=2
while ((num > 1)); do
    if [[ num%i -eq 0 ]]; then
    ((num=num/i))
    echo -n "${i} "
    else # 今の数字(i)で割り切れなくなった場合は"割る数(i)"を増やしていく
    ((i++))
    fi
done
echo # ただの改行