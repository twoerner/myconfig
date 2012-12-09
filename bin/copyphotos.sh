#! /bin/bash

# $1 file extension to look for
get_files() {
	if [ -z "$1" ]; then
		echo "internal error, required arg \$1 missing"
		return 1
	fi

	total=`find $SOURCEDIR -iname "*${1}" -print 2> /dev/null | wc -l`
	count=1
	if [ $total -gt 0 ]; then
		for image in `find $SOURCEDIR -iname "*${1}" -print`; do
			dir=`echo $image | cut -d'/' -f5 | cut -d'c' -f1`
			fsrt=`basename $image | cut -d'_' -f1`
			fend=`basename $image | cut -d'_' -f2`
			fname=$fsrt\_$dir\_$fend
			printf "copying $1 %03d of %03d $fname ... " $count $total
			cp "$image" "$DESTDIR/$fname"

			# orientation
			orientation=`exiftool -Orientation -S -n "$DESTDIR/$fname" | cut -d' ' -f2`
			if [ "$orientation"x = "6"x -o "$orientation"x = "8"x ]; then
				echo -n "rotating ... "
				imgrot.sh "$DESTDIR/$fname"
			fi

			# chmod
			chmod -x "$DESTDIR/$fname"

			# touch
			exiftouch.sh $DESTDIR/$fname

			# thumb
			if [ "$1" = "thm" ]; then
				if [ "$fname" != "`basename $fname .THM`" ]; then
					fname=`basename $fname .THM`.JPG
				fi
				if [ "$fname" != "`basename $fname .thm`" ]; then
					fname=`basename $fname .THM`.JPG
				fi
			fi

			echo "done"
			count=`expr $count + 1`
		done
	else
		echo "no ${1}'s found"
	fi
}

# check usage
if [ $# -ne 2 ]; then
	echo "usage: `basename $0` <\"micromate\"|\"flash\"> <directory to place camera contents>"
	exit 1
fi

# check 1st arg
if [ "$1"x = "micromate"x -o "$1"y = "flash"y ]; then
	echo
else
	echo "first arg must be one of 'micromate' or 'flash'"
	exit 1
fi

if [ "$1"x = "micromate" ]; then
	SOURCEDIR="/mnt/$1/dcim"
else
	SOURCEDIR="/mnt/$1/DCIM"
fi
DESTDIR="$2"

# check arg is a writable directory
if [ ! -d "$DESTDIR" ]; then
	echo "the argument '$DESTDIR' needs to be a directory"
	exit 1
fi
if [ ! -w "$DESTDIR" ]; then
	echo "the destination directory needs to be writable"
	exit 1
fi

# check for tools
if [ ! -x `which imgrot.sh` ]; then
	echo "can't find (executable) tool 'imgrot.sh'"
	exit 1
fi
if [ ! -x `which exiftouch.sh` ]; then
	echo "can't find (executable) tool 'exiftouch.sh'"
	exit 1
fi
if [ ! -x `which exiftool` ]; then
	echo "can't find (executable) tool 'exiftool'"
	exit 1
fi

get_files jpg
get_files avi
get_files mov
get_files thm

exit 0

to playback 1080p movies from 7D use:
$ mplayer -fs *MOV -framedrop

you could also try
$ mplayer -fs *MOV -framedrop -autosync 30
