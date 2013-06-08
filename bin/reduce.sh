#! /bin/bash

if [ $# -eq 0 ]; then
	echo "bad usage: $1 <file(s) to reduce>"
	exit 1
fi

if [ ! -x `which convert` ]; then
	echo "can't find convert"
	exit 1
fi

while [ $# -gt 0 ]; do
	TMPFILE=`mktemp`
	TMPFILE=${TMPFILE}.jpg

	echo -n "processing file $1 ... "
	convert -geometry "1024x768" -quality 83 "$1" "$TMPFILE"
	mv "$TMPFILE" "$1"
	echo "done"

	shift
done
