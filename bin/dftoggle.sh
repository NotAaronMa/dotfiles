#! /bin/bash
if pgrep xcompmgr &>/dev/null; then
    echo "Turning off desktop effects"
    pkill xcompmgr &
else
    echo "Turning on desktop effects"
    xcompmgr &
fi
