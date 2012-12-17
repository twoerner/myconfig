#!/bin/bash

if [ $# -ne 1 ]; then
	echo "usage <colour name>"
	exit 1
fi

if [ ! -r 500colours.txt ]; then
	echo "can't find colour database"
	exit 1
fi

NAME=`echo $1 | tr -d ' ' | tr '[:upper:]' '[:lower:]'`
LINE=`cat 500colours.txt | grep "\<${NAME}\>"`
if [ -z "$LINE" ]; then
	echo "can't find colour '$1' in database"
	exit 1
fi

echo $LINE | cut -d' ' -f2
