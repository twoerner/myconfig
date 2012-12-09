#! /bin/bash

randchr() {
	local _MAXSIZE=$1
	local _PWDLEN=0
	local _INDEX
	local _ARRAY1=(
	q w e r t y u i o p a s d f g h j k l z x c v b n m Q W E R T Y U I O P A S D
	F G H J K L Z X C V B N M 1 2 3 4 5 6 7 8 9 0
	)
	local _MODNUM=${#_ARRAY1[*]}

	while [ $_PWDLEN -lt $_MAXSIZE ]; do
		_INDEX=$(($RANDOM%$_MODNUM))
		echo -n "${_ARRAY1[$_INDEX]}"
		((_PWDLEN++))
	done
	echo
}

LEN=$1
if [ -z "$LEN" ]; then
	LEN=8
fi
randchr $LEN
