#!/bin/bash

if [ $# -ne 1 ]; then
	echo "need to specify file to play"
	exit 1
fi

mpv --lavfi-complex="[aid1]volume=0.5[vol1];[aid2]volume=5[vol2];[vol1][vol2]amix[ao]" $*
