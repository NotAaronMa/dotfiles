##if not running interactively, don't do anything
[[ $- != *i* ]] && return
 
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="rxvt-unicode"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG="$HOME/.config"
export VIMRUNTIME="$HOME/.local/share/nvim/runtime"
export _JAVA_AWT_WM_NONREPARENTING=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export RANGER_LOAD_DEFAULT_RC="FALSE"


# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '')"; a="${a%_}"

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
alias arpscan='sudo arp-scan --interface=wlp3s0 --localnet'
alias vim="nvim"
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
PATH="$PATH:$HOME/.local/bin"
export PS1=$(cat $HOME/.PS1)

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

#tty colors
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0151515
  \e]P1fb9fb1
  \e]P25ef550
  \e]P3ddb26f
  \e]P46fc2ef
  \e]P5e1a3ee
  \e]P612cfc0
  \e]P7d0d0d0
  \e]P8505050
  \e]P9fb9fb1
  \e]PA5ef550
  \e]PBddb26f
  \e]PC6fc2ef
  \e]PDe1a3ee
  \e]PE12cfc0
  \e]PFf5f5f5
  "
  # get rid of artifacts
  clear
fi
