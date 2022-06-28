# xargsコマンド パフォーマンステスト

xargsコマンドを使いこなして実行パフォーマンスを上げよう

## rmコマンドのパフォーマンス
実行結果
```
# Iオプション有り
$ touch {1..100}.txt
$ time find ./ -type f | xargs -I{}  rm -f {}
real    0m0.753s
user    0m0.206s
sys     0m0.098s

# Iオプション無し
$ touch {1..100}.txt
$ time find ./ -type f | xargs rm -f
real    0m0.426s
user    0m0.027s
sys     0m0.020s
```
[参考サイト - Linuxで中括弧がある場合とない場合のxargsの違いは何ですか](https://www.web-dev-qa-db-ja.com/ja/linux/linux%E3%81%A7%E4%B8%AD%E6%8B%AC%E5%BC%A7%E3%81%8C%E3%81%82%E3%82%8B%E5%A0%B4%E5%90%88%E3%81%A8%E3%81%AA%E3%81%84%E5%A0%B4%E5%90%88%E3%81%AExargs%E3%81%AE%E9%81%95%E3%81%84%E3%81%AF%E4%BD%95%E3%81%A7%E3%81%99%E3%81%8B/959209116/)
