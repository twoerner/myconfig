#!/bin/bash

CMD="`basename $0`"
usage() {
	echo "usage: $1 <git repository>"
}

if [ $# -ne 1 ]; then
	echo "invalid number of arguments"
	usage "$CMD"
	exit 1
fi
if [ ! -d "$1" ]; then
	echo "argument is not a directory"
	usage "$CMD"
	exit 1
fi
# allow it if it is not a git root directory
# further checks will verify (this allows you
# to run this script on a sub-directory of a
# git repository
DIR="$1"

set -a PEOPLE
set -a COUNTS

function add_person() {
	for ((i=0; i<${#PEOPLE[*]}; ++i)); do
		if [ X"${PEOPLE[$i]}" = X"$1" ]; then
			COUNTS[$i]=`expr ${COUNTS[$i]} + 1`
			return
		fi
	done
	PEOPLE[$i]="$1"
	COUNTS[$i]=1
}

function process_file() {
	if [ -f "$1" ]; then
		echo "file: $1"
		TMP=`mktemp`
		git blame $1 > $TMP
		if [ $? -ne 0 ]; then
			echo "git blame was not able to run on $1"
			exit 1
		fi
		while read line; do
			TREEISH=`echo $line | cut -d' ' -f1`
			if [ X"$TREEISH" = X ]; then
				continue
			fi
			if [ X"$TREEISH" = X"00000000" ]; then
				continue
			fi
			COMMITTER=`echo $line | cut -d'(' -f2 | cut -d' ' -f1 | tr '[:upper:]' '[:lower:]'`
			add_person $COMMITTER
		done <$TMP
		rm -f $TMP
	fi
}

function process_dir() {
	echo -e "\ndir: $1"

	for OBJ in `ls $1`; do
		if [ -f "$1/$OBJ" ]; then
			process_file "$1/$OBJ"
		fi
		if [ -d "$1/$OBJ" ]; then
			process_dir "$1/$OBJ"
		fi
	done
}

cleanup() {
	echo "cleanup"
	if [ -n "$TMP" ]; then
		rm -f $TMP
	fi
}

trap cleanup EXIT

pushd "$DIR" > /dev/null
process_dir .
popd > /dev/null

echo -en "\n\nTOTALS: "
SUM=0
for ((i=0; i<${#COUNTS[*]}; ++i)); do
	SUM=`expr $SUM + ${COUNTS[$i]}`
done
echo "$SUM"
for ((i=0; i<${#PEOPLE[*]}; ++i)); do
	echo "${PEOPLE[$i]} -> ${COUNTS[$i]} => `echo "((${COUNTS[$i]}/$SUM)*100.0)" | bc -l`%"
done
