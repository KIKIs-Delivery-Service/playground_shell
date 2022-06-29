#! /bin/bash

# 課題42:整数値を3つ入力させ、それらの値が小さい順（等しくてもよい）に並んでいるか判定し、
# 小さい順に並んでいる場合はOK、そうなっていない場合はNGと表示するプログラムを作成せよ。

number_of_roop=2 #N回繰り返したい⇒N-1代入

for ((i = 0; i <= ${number_of_roop}; i++)); do
    read -r -p "$((i+1))つめの整数値を入力してください：" num"${i}"
done

array=()
for ((i = 0; i <= ${number_of_roop}; i++)); do
    array+=($((num${i}))) #←ここのエラーは放置でOK
done

for ((i = 0; i <= ${number_of_roop}; i++)); do
    if [ ${i} -eq ${number_of_roop} ]; then
        echo "昇順チェック：すべてOK"
        break
    elif [ ${array[i]} -le ${array[$((i+1))]} ]; then
        echo "昇順チェック（$((i+1))番目→$((i+2))番目）：OK"
    else
        echo "昇順チェック（$((i+1))番目→$((i+2))番目）：NG"
        break
    fi
done

echo "ちなみに、要素数は${#array[*]}で、中身は${array[*]}"
