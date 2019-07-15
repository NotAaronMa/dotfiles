en=$(($(cat /sys/class/power_supply/BAT0/energy_now) + $(cat /sys/class/power_supply/BAT1/energy_now)))
en=$(($en * 100))
ef=$(($(cat /sys/class/power_supply/BAT0/energy_full) + $(cat /sys/class/power_supply/BAT1/energy_full)))
echo $((en/ ef))
