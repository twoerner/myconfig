#!/bin/bash

# usage: difftime.sh <start> <end>
# output is in seconds

if [ $# -ne 2 ]; then
	echo "usage: difftime.sh <start> <end>"
	exit 1
fi

STARTSEC=$(date -d "$1" +%s)
ENDSEC=$(date -d "$2" +%s)
DIFFSEC=$(echo $ENDSEC - $STARTSEC | bc -l)

((SEC=DIFFSEC%60, DIFFSEC/=60, MIN=DIFFSEC%60, HRS=i/60))
TIMESTAMP=$(printf "%d:%02d:%02d" $HRS $MIN $SEC)
echo $TIMESTAMP
