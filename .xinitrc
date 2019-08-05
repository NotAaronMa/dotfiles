#ctrl-alt-backspace
setxkbmap -option terminate:ctrl_alt_bksp &
#load xresources file
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#disable fucking mouse acceleration
xset m 0 0
#allow using touchpad while typing
xinput --set-prop 12 306 Disabled
#start a wm
exec bspwm
#exec dbus-launch startxfce4
