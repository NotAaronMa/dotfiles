##if not running interactively, don't do anything
[[ $- != *i* ]] && return
export GOPATH="$HOME/.local/share/go"
export GOBIN="$HOME/.local/share/go/bin"
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="$TERMINAL -e ranger"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG="$HOME/.config"
export _JAVA_AWT_WM_NONREPARENTING=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export RANGER_LOAD_DEFAULT_RC="FALSE"
export PS1=$(cat $HOME/.PS1)

alias fucking="sudo"
alias sctl="sudo systemctl"
alias p="sudo pacman"
alias dlmp3="youtube-dl --extract-audio --audio-format mp3"
alias ..="cd .."
alias cd..="cd .."
alias ls="ls -CF --color=auto"
alias ll="ls -lisa --color=auto"
alias grep="grep --color=auto"
alias wget="wget -c"
alias lspkg="comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)"
alias arp="ip n"
alias sctl="sudo systemctl"
alias p="sudo pacman"
alias ranger='ranger --choosedir=$HOME/.local/share/rangerdir; LASTDIR=`cat $HOME/.local/share/rangerdir`; cd "$LASTDIR"'

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

