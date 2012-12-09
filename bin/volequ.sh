#!/bin/bash

# this program takes all the input files and equalizes their volumes to 1
# it uses sox as the helper program

which sox > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "I can't seem to be able to find the helper program 'sox'"
	exit 1
fi

FILECNT=$#

for (( I=1 ; I <= $FILECNT ; I=`expr $I + 1` )); do
	TMPOUT=`mktemp out.XXXXXXXXXX`
	if [ $? -ne 0 ]; then
		echo "can't create tmp file"
		exit 1
	fi
	rm -f $TMPOUT

	echo -n "working on file: \"$1\": "
	TMP=`sox "$1" -e stat -v 2>&1`
	echo "$TMP "

	if [ "$TMP" != "1.000" ]; then
		sox -SV "$1" "${TMPOUT}.ogg" vol $TMP
		mv "${TMPOUT}.ogg" "$1"
	fi

	# next file
	shift 1
done
