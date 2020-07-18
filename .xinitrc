#ctrl-alt-backspace
setxkbmap -option terminate:ctrl_alt_bksp &
xrandr
~/.screenlayout/default.sh
xset m 0 0
xset r rate 200 30
xsetroot -cursor_name left_ptr &
xinput --set-prop 12 "libinput Disable While Typing Enabled" 0
cd
exec bspwm

