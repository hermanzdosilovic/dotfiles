#!/bin/bash
source variables.sh

for file in $(ls .z* 2> /dev/null); do
  if [[ -f "$HOME/$file" ]] || [[ -h "$HOME/$file" ]]; then
    echo "zsh: deleting old $HOME/$file"
    rm "$HOME/$file"
  fi
  echo "zsh: $HOME/$file -> $PWD/$file"
  ln -s "$PWD/$file" "$HOME/$file"
done

if [[ -f "$prezto/$theme_name" ]] || [[ -h "$prezto/$theme_name" ]]; then
  echo "zsh: deleting old $prezto/$theme_name"
  rm "$prezto/$theme_name"
fi
echo "zsh: $prezto/$theme_name -> $PWD/$theme_name"
ln -s "$PWD/$theme_name" "$prezto/$theme_name"
