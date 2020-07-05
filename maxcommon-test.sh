#!/bin/bash

# 正常系のテストコード
ans=15
./maxcommon.sh 465 360
result=$?

if [ ${ans} -eq ${result} ] ; then
	exit 0
else
	exit 1
fi

