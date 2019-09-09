#ctrl-alt-backspace
setxkbmap -option terminate:ctrl_alt_bksp &
#xrandr
xrandr --output eDP1 --primary --mode 1920x1080 --pos 1050x600 --rotate normal --output DP1 --off --output DP2 --mode 1680x1050 --pos 0x0 --rotate right --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
#load xresources file
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#disable fucking mouse acceleration
xset m 0 0
#allow using touchpad while typing
xinput --set-prop 12 306 Disabled
#start a wm 
autostart
exec bspwm
#exec dbus-launch startxfce4
