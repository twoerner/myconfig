#! /bin/bash

if [ ! -x $(which mogrify) ]; then
	echo "can't find mogrify"
	exit 1
fi
if [ ! -x $(which exiftool) ]; then
	echo "can't find exiftool"
	exit 1
fi


CMDLINE=$(getopt --options=nr: --longoptions=noupdate,rotate: -n "$0" -- "$@")
if [ $? -ne 0 ]; then
	echo "getopt(1) invocation error"
	exit 1
fi
eval set -- "$CMDLINE"
unset CMDLINE
NO_UPDATE=0
CMDLINE_ROTATE=0
while [ 1 ]; do
	case "$1" in
		-r|--rotate)
			CMDLINE_ROTATE=$2
			shift 2
			;;
		-n|--noupdate)
			NO_UPDATE=1
			shift
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
	rotate=0
	if [ $CMDLINE_ROTATE -eq 0 ]; then
		orientation=$(exiftool -Orientation -S -n $1 | cut -d' ' -f2)
		if [ "$orientation"x = "6"x ]; then
			rotate=90
		fi
		if [ "$orientation"x = "8"x ]; then
			rotate=270
		fi
	else
		rotate=$CMDLINE_ROTATE
	fi

	if [ $rotate -eq 0 ]; then
		echo "...rotate is zero, nothing to do"
		shift
		continue
	fi

	mogrify -compress lossless -rotate $rotate $1
	chmod go+r "$1"
	if [ $NO_UPDATE -eq 0 ]; then
		exiftool -n -overwrite_original_in_place -Orientation=1 $1 > /dev/null 2>&1
	fi

	echo
	shift
done

exit 0
