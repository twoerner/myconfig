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
	echo -n "working on file: \"$1\": "

	FILEEXT=$(echo "$1" | rev | cut -d'.' -f1 | rev)
	if [ x"$FILEEXT" = x ]; then
		echo "input file ($1) has no extension"
	else
		TMPOUT=$(mktemp out.XXXXXXXXXX)
		if [ $? -ne 0 ]; then
			echo "can't create tmp file"
			exit 1
		fi
		rm -f $TMPOUT

		TMP=`sox "$1" -n stat -v 2>&1`
		echo "$TMP "

		if [ "$TMP" != "1.000" ]; then
			sox -SV "$1" "${TMPOUT}.${FILEEXT}" vol $TMP
			mv "${TMPOUT}.${FILEEXT}" "$1"
		fi
	fi

	# next file
	shift 1
done
