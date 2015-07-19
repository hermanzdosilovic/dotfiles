#!/bin/bash
source variables.sh

for file in $(ls .z* 2> /dev/null); do
  if [[ -f "$HOME/$file" ]]; then
    echo "zsh: removing old $HOME/$file [OK]"
    rm "$HOME/$file"
  fi
  echo "zsh: $HOME/$file -> $PWD/$file [OK]"
  ln -s "$PWD/$file" "$HOME/$file"
done

theme_name="prompt_herman_setup"
prezto="$HOME/.zprezto/modules/prompt/functions"

if [[ -f "$prezto/$theme_name" ]]; then
  echo "zsh: removing old $prezto/$theme_name [OK]"
  rm "$prezto/$theme_name"
fi
echo "zsh: $prezto/$theme_name -> $PWD/$theme_name"
ln -s "$PWD/$theme_name" "$prezto/$theme_name"
