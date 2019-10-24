#!/bin/bash

# aiff2ogg.sh converts a file from aiff to ogg. this helper script runs
# aiff2ogg.sh in any subdirectory (starting from the current location)
# where it finds at least one *aiff file, then deletes all the *aiff files
#
# !! NOTE !!
# make sure to do this on a copy of the directory tree containing the *aiff files
# !! NOTE !!

which aiff2ogg.sh > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "can't find aiff2ogg.sh"
	exit 1
fi
if [ ! -x "$(which aiff2ogg.sh)" ]; then
	echo "can't run aiff2ogg.sh"
	exit 1
fi

LISTOFDIRS="$(mktemp)"
find . -type d | sed -e 's%^./%%g' > $LISTOFDIRS
TOTALLINES=$(wc -l $LISTOFDIRS | cut -d' ' -f1)
if [ $TOTALLINES -le 1 ]; then
	echo "nothing to do"
	exit 0
fi

LINE=2
while [ $LINE -le $TOTALLINES ]; do
	DIR="$(cat $LISTOFDIRS | head -n $LINE | tail -n 1)"

	pushd "$DIR" > /dev/null 2>&1
		ls *aiff > /dev/null 2>&1
		if [ $? -eq 0 ]; then
			aiff2ogg.sh *aiff
			rm -f *aiff
		fi
	popd > /dev/null 2>&1

	LINE=$(expr $LINE + 1)
done

rm -f $LISTOFDIRS
