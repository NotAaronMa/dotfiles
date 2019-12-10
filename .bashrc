##if not running interactively, don't do anything
[[ $- != *i* ]] && return
source ~/.config/aliasrc
#mouse 
function mouse {
   xinput --set-prop $1 "libinput Accel Speed" $2
}
#get shell code from elf file for ctfs and shit
function gsc {
   for i in $(objdump -d $1 |grep "^ " |cut -f2); do echo -n '\x'$i; done; echo 
}

#------------- Colors and shit --------------

# set PATH so it includes user's private bin directories

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"
export PS1=$(<~/.PS1)
