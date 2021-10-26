#!/bin/bash
# put this script somewhere
# create 2 soft links to it:
#	linux-to.sh
#	linux-cc.sh
# in ~/.gitconfig add:
#	tocmd = /some/where/linux-to.sh
#	cccmd = /some/where/linux-cc.sh

## get_maintainer.pl options:
# --nogit => DO NOT include recent git \*-by: signers
# --nogit-fallback => DO NOT use git when no exact MAINTAINERS pattern
# --norolestats => DO NOT show roles and statistics
# --pattern-depth=1 => number of pattern directory traversals
# --m => include maintainers
# --l => include lists
# --moderated => include moderated lists
# --s => include subscriber-only lists
OPTS="--nogit --nogit-fallback --norolestats --nom --nol --nomoderated --nos"
if [ "$(basename $0)" = "linux-to.sh" ]; then
	OPTS="$OPTS --m"
elif [ "$(basename $0)" = "linux-cc.sh" ]; then
	OPTS="$OPTS --l --moderated --s"
else
	exit 1
fi

if [[ $(basename $1) =~ ^0000- ]] ; then
	# this assumes the set of patches is in a directory
	./scripts/get_maintainer.pl $OPTS $(dirname $1)/*
else
	./scripts/get_maintainer.pl $OPTS $1
fi
