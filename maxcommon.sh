#!/bin/bash

# 入力値のチェック
if [ $# != 2 ] ; then
	echo "1つの数値を設定してください"
	exit 1
else
	expr $1 + 1 >/dev/null 2>&1
	ans1=$?
	expr $2 + 1 >/dev/null 2>&1
	ans2=$?
	if [ $ans1 -eq 2 ] || [ $ans2 -eq 2 ] ; then
		echo "数字を設定してください"
		exit 1
	fi
	 
	if [ $1 -le 0 ] || [ $2 -le 0 ] ; then
		echo "自然数を設定してください。"
		exit 1
	fi
fi

# 入力値の処理
if [ $1 -le $2 ] ; then
	num=$1
	set $1 $2
	set $2 $num
fi

a=$1
b=$2
tmp=`expr $1 % $2`
while [ $tmp -ne 0 ]
do
	a=$b
	b=$tmp
	tmp=`expr $a % $b`
done
echo $b





