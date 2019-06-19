#!/bin/bash
x=$((`bspc config -d focused window_gap`))

if [ 0 -gt $1 ]
then 
	if [ $x -gt 0 ]
	then
		bspc config -d focused window_gap $(($x + $1))
	fi
fi
if [ $1 -gt 0 ]
then 
	bspc config -d focused window_gap $(($x + $1))
fi
