#! /bin/bash

if [ ! -x $(which mogrify) ]; then
	echo "can't find mogrify"
	exit 1
fi
if [ ! -x $(which exiftool) ]; then
	echo "can't find exiftool"
	exit 1
fi


CMDLINE=$(getopt --options=r: --longoptions=rotate: -n "$0" -- "$@")
if [ $? -ne 0 ]; then
	echo "getopt(1) invocation error"
	exit 1
fi
eval set -- "$CMDLINE"
unset CMDLINE
rotate=0
while [ 1 ]; do
	case "$1" in
		-r|--rotate)
			rotate=$2
			shift 2
			;;
		--)
			shift
			break
			;;
		*)
			echo "getopt(1) internal error"
			exit 1
			;;
	esac
done


while [ $# -ge 1 ]; do
	EXT=$(echo $1 | rev | cut -d'.' -f1 | rev | tr [:lower:] [:upper:])
	if [ "$EXT"x != "JPG"x ]; then
		shift
		continue
	fi

	echo -n "processing $1"
	if [ $rotate -eq 0 ]; then
		orientation=`exiftool -Orientation -S -n $1 | cut -d' ' -f2`
		if [ "$orientation"x = "6"x ]; then
			rotate=90
		fi
		if [ "$orientation"x = "8"x ]; then
			rotate=270
		fi
	fi
	if [ $rotate -eq 0 ]; then
		echo "...rotate is zero, nothing to do"
		shift
		continue
	fi

	mogrify -compress lossless -rotate $rotate $1
	chmod go+r "$1"
	echo
	shift
done

exit 0
