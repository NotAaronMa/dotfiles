#enviroment variables
export HOME="/home/aaron/"
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export XDG_DATA_DIRS="/usr/share:/usr/local/share:$HOME/.local/share"
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh/"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Media/Music"
export XDG_PICTURES_DIR="$HOME/Media/Pictures"
export XDG_VIDEOS_DIR="$HOME/Media/Videos/"
#use xdg files
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTKR2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

#default apps
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="$TERMINAL -e ranger"
export OPENER="xdg-open"

#environment settings
export _JAVA_AWT_WM_NONREPARENTING=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export RANGER_LOAD_DEFAULT_RC="FALSE"
export CLR_OPENSSL_VERSION_OVERRIDE=48

[ $(tty) = "/dev/tty1" ] && startx -- vt1 > /dev/null && clear && exit
