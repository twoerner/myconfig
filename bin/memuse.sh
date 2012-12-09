#!/bin/bash

TOTAL=`cat /proc/meminfo | grep "^MemTotal" | tr -s ' ' | cut -d' ' -f2`
FREE=`cat /proc/meminfo | grep "^MemFree" | tr -s ' ' | cut -d' ' -f2`

PERCENT=`echo "(1 - ($FREE/$TOTAL)) * 100" | bc -l`
printf "%.2f%%\n" $PERCENT
