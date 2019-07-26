#/bin/bash


for x in $(ls config); do
ln -sf $x $HOME/.config/$x
done


