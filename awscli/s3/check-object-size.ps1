# PowerShellでフォルダ内部の状況を把握する

## ファイル数カウント
Get-ChildItem | Measure-Object

## 指定したサイズ以下のファイルを調べる
Get-ChildItem | Where-Object { $_.Length -le 128KB } | Measure-Object

## ファイルサイズの大きい順に並べる
Get-ChildItem | Sort-Object -Property Length -Descending | Select-Object -first 10
