#!/bin/bash

tmp=/tmp/$$
echo "input 2 argments" > $tmp-args
echo "input natural number" > $tmp-nat

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}
