#! /bin/bash

if [ ! -x `which convert` ]; then
	echo "can't find convert"
	exit 1
fi

while [ $# -ge 1 ]; do
	TMPFILE=`mktemp`.jpg
	echo -n "processing file $1 ... "
	convert -geometry "2592x1728" -quality 75 "$1" "$TMPFILE"
	mv "$TMPFILE" "$1"
	echo "done"
	shift
done
