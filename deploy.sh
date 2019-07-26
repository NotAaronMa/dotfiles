#/bin/bash

for x in $(ls ./config); do
   echo "copying config/$x to $HOME/.config/$x"
   rm -R $HOME/.config/$x
   cp -R ./config/$x $HOME/.config/$x
done


for x in $(ls -a ./hf); do
   if [ "$x" != "." ] && [ "$x" != ".." ]; then
   echo "copying hf/$x to $HOME/$x"
      rm -R $HOME/$x
      cp -R ./hf/$x $HOME/$x
   fi
done

source $HOME/.bashrc

