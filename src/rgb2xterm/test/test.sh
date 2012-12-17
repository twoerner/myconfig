#!/bin/bash

for ((r=0; r<0x100; ++r)); do
	for ((g=0; g<0x100; ++g)); do
		for ((b=0; b<0x100; ++b)); do
			VAL=`printf "#%02x%02x%02x\n" $r $g $b`
			echo -n "$VAL -> "
			./rgb2xterm $VAL
		done
	done
done
