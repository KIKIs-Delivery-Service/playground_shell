#! /bin/bash

# 課題50:1から100までの値を繰り返しで表示するが、3の倍数の時はfoo、5の倍数の時はbarと数字の代わりに表示するプログラムを作成せよ。
# なお、3と5の両方の倍数の時はfoobarと表示される。

for ((i = 1; i <= 100; i++)); do
    if [[ ${i}%15 -eq 0 ]]; then
        echo "foobar"
    elif [[ ${i}%3 -eq 0 ]]; then # 3の倍数のほうが5よりもヒット率が高いため、3を先に持ってきて処理の負荷をチョットだけ和らげる
        echo "foo"
    elif [[ ${i}%5 -eq 0 ]]; then
        echo "bar"
    else
        echo "${i}"
    fi
done