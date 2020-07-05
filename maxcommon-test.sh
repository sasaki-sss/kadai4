#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$result"
msg="数字を設定してください"
msg > ${ans}
./maxcommon.sh aa bb > 
diff ${ans} ${result} || exit 1

rm /tmp/$$-*
