#!/bin/bash
source variables.sh

for file in $(ls .z* 2> /dev/null); do
  if [[ -f $HOME/$file ]] || [[ -h $HOME/$file ]]; then
    echo "zsh: deleting $HOME/$file"
    rm "$HOME/$file"
  else
    echo "zsh: $HOME/$file was already deleted"
  fi
done

if [[ -f "$prezto/$theme_name" ]] || [[ -h "$prezto/$theme_name" ]]; then
  echo "zsh: deleting $prezto/$theme_name"
  rm "$prezto/$theme_name"
else
  echo "zsh: $prezto/$theme_name was already deleted"
fi
