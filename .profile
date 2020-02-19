source /home/aaron/.bashrc
#enviroment variables
export HOME="/home/aaron/"
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export XDG_DATA_DIRS=".local/share/applications"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG="$HOME/.config"
export PS1="$(<$HOME/.PS1)"

#default apps
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="$TERMINAL -e ranger"

#environment settings
export _JAVA_AWT_WM_NONREPARENTING=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export RANGER_LOAD_DEFAULT_RC="FALSE"
