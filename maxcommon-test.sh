#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$result"

15 > ${ans}
./maxcommon.sh 465 360 > ${result}
diff ${ans} ${result} || exit 1

rm /tmp/$$-*
