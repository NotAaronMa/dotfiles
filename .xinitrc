cd
#ctrl-alt-backspace
setxkbmap -option terminate:ctrl_alt_bksp &
#xrandr
mon1.sh
load xresources file
xrdb -merge ~/.Xresources
#disable fucking mouse acceleration
xset m 0 0
xset r rate 200 30
xinput --set-prop 12 306 Disabled
exec bspwm
