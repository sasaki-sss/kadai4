#!/bin/bash

# 入力値エラーのテストコード
ans="引数を2つ設定してください"
result=`sh maxcommon.sh 3`

if [ ${ans} = ${result} ] ; then
	echo "OK"
	exit 0
else
	echo "NG"
	exit 1
fi

