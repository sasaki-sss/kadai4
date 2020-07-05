#!/bin/bash

# 正常系のテストコード
ans=15
./maxcommon.sh 465 360
result=$?

if [ ${ans} -eq ${result} ] ; then
	echo "OK"
	exit 0
else
	echo "NG"
	exit 1
fi

