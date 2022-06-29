#! /bin/bash

# 課題44:換算したい金額（円単位）と1ドル何円かを整数値で入力すると、入力した金額が何ドル何セントか計算して表示するプログラムを作成せよ。
# 1セントは1/100ドルである。結果は整数値でよい（1セント未満の端数切り捨て）。


read -r -p "ドルに換算したい金額（円）を入力してください" inputYen
echo "レート：1ドル=120円"

# メモ：以下のどちらの書き方でもOK
# dollar=$(bc <<< "scale=2 ; $inputYen/120")
# dollar=$(echo "scale=2 ; $inputYen/120" | bc)

# 計算結果を整形して出力
# printf "${inputYen}円は%.2fドルだよ\n" $(echo "scale=2 ; $inputYen/120" | bc)
# 出力例：10000円は83.33ドルだよ
# しかしこれではドルとセントの表記を分けられないため、printfでは断念。

# よって、ゴリ押しすることにした
((dollar=${inputYen}/120))
((cent=${inputYen}*100/120-${dollar}*100))
echo "${inputYen}円は${dollar}ドル${cent}セントだよ"