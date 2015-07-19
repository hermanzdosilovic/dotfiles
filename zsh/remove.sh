#!/bin/bash
source variables.sh

for file in $(ls .z* 2> /dev/null); do
  if [[ -f $HOME/$file ]]; then
    echo "zsh: removing $HOME/$file [OK]"
    rm "$HOME/$file"
  else
    echo "zsh: $HOME/$file is already removed [OK]"
  fi
done

if [[ -f "$prezto/$theme_name" ]]; then
  echo "zsh: removing $prezto/$theme_name [OK]"
  rm "$prezto/$theme_name"
else
  echo "zsh: $prezto/$theme_name is already removed [OK]"
fi
