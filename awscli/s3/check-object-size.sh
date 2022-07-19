#!/bin/bash

# やりたいこと：S3バケットの特定フォルダ内で、一定サイズ以上のオブジェクトがいくつあるかカウントしたい
# 背景：S3 Standardから他のストレージクラスに移行するにあたって、128KB以下のファイルがいくつあるかがコスト的に肝心となる

# いったんS3からローカルにコピーし、findコマンドとwcコマンドで絞り込み & 集計
mkdir s3
cd s3
mkdir test
cd test
aws s3 cp --recursive ${S3_PATH_TO_PREFIX} .
find . -size -128k -type f | wc -l

## 上記findコマンドが機能しないときの代替案（サイズ順に並び替え）
ls -l | awk '{print $5}' | sort -r -n | head -10

## フォルダ内のファイル合計サイズ
ls -l | awk '{sum+=$5} END{print sum;}'

# その他
## 現在S3にあるフォルダ内のオブジェクトサイズとオブジェクト数のサマリーだけパッと確認したいとき（オブジェクト数が多いときは費用に注意）
aws s3 ls ${S3_PATH_TO_PREFIX} --sum --human-readable

## サイズ順に並び替え
aws s3 ls ${S3_PATH_TO_PREFIX} | awk '{print $3}' | sort -r -n | head -10

## 【ボツ】こちらは直接クエリができるが --human-readable で表示できないなど、フォーマットの融通が効かない
aws s3api list-objects-v2 --bucket ${BUCKET_NAME} --prefix ${PREFIX_NAME} --query "Contents[].Size"
