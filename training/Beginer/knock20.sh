#! /bin/bash

# 課題20:整数値を2つ入力させ、1つめの値を2つめの値で割った結果を表示し、続けてその結果に2つめの値を掛けた結果を表示するプログラムを作成せよ。
# 計算はすべて整数型で行うこと（割り切れない場合は自動的に小数点以下が切り捨てられる）。

read -r -p "input 1st value: " num1
read -r -p "input 1st value: " num2

echo "$((num1/num2))"
echo "$((num2**2))"