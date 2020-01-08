#!/bin/sh
xrandr --output eDP1 --primary --mode 1920x1080 --pos 1050x600 --rotate normal  --output DP2 --mode 1680x1050 --pos 0x0 --rotate right
xrandr --output DP1 --mode 2560x1440 --right-of eDP1
for x in $(bspc query -M);
  do bspc monitor $x -d 1 2 3;
done
~/.fehbg
