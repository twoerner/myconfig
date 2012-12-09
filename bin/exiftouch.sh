#!/bin/bash

if [ ! -x `which exiftool` ]; then
	echo "can't find required exiftool program"
	exit 1
fi

for file; do
	date=`exiftool -d "%Y/%m/%d %T" $file 2> /dev/null | grep "Create Date" | head -n 1 | tr -s ' ' | cut -d' ' -f4-`
	if [ -n "$date" ]; then
		touch -d "$date" $file
	fi
done
