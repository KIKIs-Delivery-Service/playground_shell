#! /bin/bash

# 課題48:最初に2以上の整数値を入力し、次の規則で計算し、計算回数と計算結果を表示し、計算結果が1になるまで繰り返すプログラムを作成せよ。
# 規則：ある値が偶数ならその値を1/2にする。奇数ならその値を3倍して1を足す。
# いわゆる3n+1問題（コラッツ予想）

read -r -p "2以上の整数を入力してください：" int

while [[ ${int} -gt 1 ]]; do
    if [[ ${int}%2 -eq 0 ]]; then
        echo -n "${int} ÷ 2 = "
        ((int = int / 2))
        echo "${int}"
    else
        echo -n "${int} × 3 + 1 = "
        ((int = int * 3 + 1))
        echo "${int}"
    fi
done

echo "Calculation is over"