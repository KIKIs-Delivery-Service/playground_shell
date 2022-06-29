#! /bin/bash

# 課題41:整数値を入力させ、その値が一桁の自然数かそうでないか判定するプログラムを作成せよ。

read -r -p "一桁の自然数かを判定してやろう：" num

# [[ expr1 =~ expr2 ]]でexpr2の表現がexpr1に含まれるかどうか、を判断する。
# ^: 文字列開始
# [0-9]: 0~9の数字いずれかの文字
# +: 直前の文字を1回以上繰り返し
# $: 文字列終了
if [[ "${num}" =~ ^[0-9]+$ ]] && [ "${num}" -ge 1 ] && [ "${num}" -le 9 ]; then
    echo "${num} IS a single natural figure."
else
    echo "${num} IS NOT a single natural figure."
fi

# 参考サイト
## [bashで数値を判定する方法](https://www.koikikukan.com/archives/2020/12/02-235555.php)
## [シェルスクリプトで数字かどうか判断する方法(exprだけじゃない)](https://rcmdnk.com/blog/2018/09/05/computer-bash-zsh/#-x--0-9-)
## [サルにもわかる正規表現入門](https://userweb.mnet.ne.jp/nakama/)