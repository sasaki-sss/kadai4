#!/bin/bash

# 入力値エラーのテストコード
ans="数字を設定してください"
result=`sh maxcommon.sh aaa bbb`

if [ ${ans} = ${result} ] ; then
	echo "OK"
	exit 0
else
	echo "NG"
	exit 1
fi

