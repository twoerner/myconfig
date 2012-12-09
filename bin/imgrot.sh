#! /bin/bash

if [ $# -ne 1 ]; then
	echo "bad usage: `basename $0` <file to rotate>"
	exit 1
fi

if [ ! -x `which jpegtran` ]; then
	echo "can't find jpegtran"
	exit 1
fi
if [ ! -x `which exiftool` ]; then
	echo "can't find exiftool"
	exit 1
fi

orientation=`exiftool -Orientation -S -n $1 | cut -d' ' -f2`
rotate=0
if [ "$orientation"x = "6"x ]; then
	rotate=90
fi
if [ "$orientation"x = "8"x ]; then
	rotate=270
fi

if [ $rotate -eq 0 ]; then
	exit 1
fi

mogrify -compress lossless -rotate $rotate $1
chmod go+r "$1"
exit 0
