#!/bin/bash

for file in $(ls .z* 2> /dev/null); do
  ln -s "$PWD/$file" "$HOME/$file"
done

theme_name="prompt_herman_setup"
ln -s "$PWD/$theme_name" "$HOME/.zprezto/modules/prompt/functions/$theme_name"
