#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$result"

msg=15
msg > ${ans}
./maxcommon.sh 465 360 > ${result}
diff ${ans} ${result} || exit 1

rm /tmp/$$-*
