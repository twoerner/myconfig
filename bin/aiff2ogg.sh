#!/bin/bash

which ffmpeg > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "can't find ffmpeg"
	exit 1
fi

if [ $# -lt 1 ]; then
	echo "nothing to convert"
	exit 0
fi

while [ $# -ge 1 ]; do
	# replace the following two lines with the ${i%%...} thing
	#BASENAME=`basename "$1" .aiff`
	#OUTNAME="$BASENAME".ogg
	ffmpeg -i "$1" -vn -acodec libvorbis "${1%aiff}ogg"
	shift
done
