if [ -z "$(bspc query -N -n focused.fullscreen)" ]; then 
  echo "making tiled"
  bspc node focused -t fullscreen
else                      
  echo "making fullscreen"
  bspc node focused -t tiled
fi
