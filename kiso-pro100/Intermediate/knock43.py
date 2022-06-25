# Pythonコード
# Reference:https://wagtail.cds.tohoku.ac.jp/coda/python/p-3-branching.html

# 課題43:2次方程式 ax^2 + bx + c = 0 （x^2はxの2乗の意味）の係数a, b, cを入力し、
# 2次方程式の解が2つの実数解か、重解か、2つの虚数解かを判別するプログラムを作成せよ。

# 二次方程式 ax2+bx+c=0 の係数 a,b,c を与えると、判別式を評価し、実数解を表示するプログラムの例を以下に示す：

# coding: utf-8
import math
a,b,c=map(float,input("カンマ区切りで係数 a b c を入力してください:").split(","))
d=b*b-4*a*c
if d<0:
    print("実数解はありません")
else:
    s1=(-b+math.sqrt(d))/(2*a)
    s2=(-b-math.sqrt(d))/(2*a)
    print("答え:",s1,s2)