/****
     redirectinput.c
     リダイレクトでデータを入力させる
     データの形式は、
     1行目にデータの個数、
     2行目以降は各データの値
     使用方法：
     redirectinput < datafile
*****/

#include <stdio.h>

int main() {
  int numData;  // データの個数
  int data[100];  // データを格納する配列、100個分
  int i;  // カウンタ

  // データの個数を読み込む
  scanf("%d", &numData);

  // 本当は、ここでデータの個数をチェックする必要があるが省略

  // データの個数だけ繰り返してデータを読み込む
  for (i = 0; i < numData; i++) {
    scanf("%d", &data[i]);
  }

  // おまけ：表示してちゃんと読み込まれたことを確認しておく
  printf("numData = %d\n", numData);
  for (i = 0; i < numData; i++) {
    printf("%d\n", data[i]);
  }

  return 0;
}