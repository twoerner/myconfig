#!/bin/bash

DEVICE="SynPS/2 Synaptics TouchPad"
PROPERTY="Device Enabled"

get_current_status() {
	local _ret

	_ret=$(xinput list-props "$DEVICE" | grep "$PROPERTY" | cut -d':' -f2)
	echo $_ret
}

status=$(get_current_status)
if (( $status == 1 )); then
	status=0
else
	status=1
fi

xinput set-prop "$DEVICE" "$PROPERTY" $status
