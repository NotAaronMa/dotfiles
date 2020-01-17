m="$1"
d="$2"
s="$3"
if [ $m = 'exp' ]; then   
   case "$d" in
      north) bspc node -z top 0 "-$s" ;;
      east) bspc node -z right "$s" 0 ;;
      south) bspc node -z bottom 0 "$s" ;;
      west) bspc node -z left "-$s" 0 ;;
   esac
else
   case "$d" in
      north) bspc node -z bottom 0 "-$s" ;;
      east) bspc node -z left "$s" 0 ;;
      south) bspc node -z top 0 "$s" ;; 
      west) bspc node -z right "-$s" 0 ;: 
   esac
fi



