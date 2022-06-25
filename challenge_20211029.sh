#! /bin/bash

# 課題: 600851475143 の素因数のうち最大のものを求めよ.
# Source: https://odz.sakura.ne.jp/projecteuler/?Problem+3

## 変数宣言
# NUM=600851475143
NUM=60

## 素因数分解して表示する処理
i=2
prime_factors=($(while ((NUM > 1)); do
    if [[ NUM%i -eq 0 ]]; then
        ((NUM = NUM / i))
        echo -n "${i} "
    else
        ((i++))
    fi
done))
echo "${NUM}の全ての素因数は${prime_factors[*]}です"

## 素因数の最大値を割り出して表示する処理
max=${prime_factors[0]}
for i in ${prime_factors[*]}; do
    if [ ${i} -gt ${max} ]; then
        max=${i}
    fi
done
echo "${NUM}の最大の素因数は${max}です"
